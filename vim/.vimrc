set noswapfile
set shiftwidth=4
set tabstop=4
set number relativenumber

set nowrap

set autoindent
let loaded_matchparen = 1

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=20

" While searching though a file incrementally highlight matching characters as you type.


" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.


" Show partial command you type in the last line of the screen.
set showcmd



" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000
:noh

colorscheme desert

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" turn hybrid line numbers on
set number relativenumber



syntax enable
