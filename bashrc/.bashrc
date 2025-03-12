#####################
###   FUNCTIONS   ### 
#####################

function hello_world(){
	echo 'changes made inside dotfile'
}


# function custom_functions() {
# 	# text stream processing
# 	cat ~/.bashrc | sed -n -E '/function[[:space:]]*([^[:space:]]+)[[:space:]]*{/s//\1/p'
# }


function find_largest_files() {
	du -h -x -s -- * | sort -r -h | head -20
}

function find_script_files() {
	extension=$1
	find . -maxdepth 1 -name "*$extension*" -type f -print
}

# broken - need to fix
# function exe() {
# 	file_name=$1
# 	chmod +x "$file_name"
# 	echo -e "#!/usr/bin/env Python3 \n" >> "$file_name"
# 	vim "$file_name"
# }

function list_envs(){
	ls ~/.virtualenvs/
	read -p "Activate a virtual environment? (Y/N): " confirm   
	if [[ $confirm == [yY] ]]; then
		read -p "Which virtual environment? " virtual_environment 
		source ~/.virtualenvs/$virtual_environment/bin/activate
	else  
		echo "no worries"
	fi
}

function create_env(){
	Python3 -m venv ~/.virtualenvs/$1
	echo "Virtual environment created"
	sleep 1
	read -p "Would you like to activate it? (Y/N): " activate
	if [[ $activate == [yY] ]]; then
		source ~/.virtualenvs/$1/bin/activate
	else
		echo "exiting..."
	fi
}

function restart() { exec "$SHELL" -l; }

# needs fixing; if virtual is found and I enter 'pyl -n', it will activate my environment? 
function pyl(){
	local deactivate_flag=0

	while getopts "n" opt; do
		case "$opt" in
			n) deactivate_flag=1 ;;
			*) echo "Usage: pyl [-d]" >&2; return 1;;
		esac
	done

	if [[ $deactivate_flag -eq 1 ]]; then
		if type deactivate &> /dev/null; then
			echo "Deactivating virtual environment"
			deactivate
	
		else
			echo "Deactivate not possible: No virtual environment is active"
		fi
		return
	fi

	if [[ -d .venv ]]; then
		echo 'Activating virtual environment'
		source .venv/bin/activate
	else
		echo 'No virtual env found'
	fi
}

 
function color_my_prompt {
	local __cur_location="\W"           
	local __git_branch=$(__git_ps1); 
  	local __venv=""

	if [[ -n "$VIRTUAL_ENV" ]]; then
    	__venv="($(basename $VIRTUAL_ENV)) "  # Extract the VENV name
  	fi
  	PS1="$__venv$__cur_location$__git_branch_color$__git_branch$__prompt_tail → "
}



# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
