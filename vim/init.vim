" General settings (Look and flair)
set number relativenumber                        " Set hybrid line numbers
set laststatus=2                                 " Always show status line
set showtabline=2                                " Always show tabline
set showmode                                     " Show EOF
set lazyredraw                                   " Do not update screen during automated tasks
filetype on                                      " Enable file type detection

set encoding=utf8                                " Set default file encoding
set autoread                                     " Update file if modified
set wildmenu wildmode=longest:full,full          " Display autocomplete options

set backspace=indent,eol,start                   " Backspace now behaves as in most editors
set autoindent                                   " Copy indent when starting new line 
set expandtab                                    " Prevent mix of tabs and spaces
set shiftwidth=0                                 " Set shiftwidth = tabstop
set tabstop=4                                    " 1 Tab == 4 Spaces

set hlsearch                                     " Highlight search results
set ignorecase                                   " Ignore case for searches

" Write file as root
cnoreabbrev w!! w !sudo tee > /dev/null %|

" Options to explore later
" set hidden                                     " :help hidden | :help windows.txt
" set autowrite
" set smartcase                                  " :help smartcase | :help ignorecase
" set nobackup noswapfile nowritebackup
" let mapleader=','
" set sidescroll=4
" set smarttab

" Configuring syntax highlighting
colorscheme termschool
syntax on
highlight Normal guibg=NONE ctermbg=NONE

" Configuring the crosshair
"   https://vi.stackexchange.com/q/23066
set cursorline
highlight cursorline cterm=none ctermbg=236

set cursorcolumn
highlight cursorcolumn cterm=none ctermbg=236

" Disable arrow keys to condition VIM-Navi Keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
