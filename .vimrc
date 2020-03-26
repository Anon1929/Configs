"Seção de config Plugins
"""""""
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugues')
Plug 'scrooloose/syntastic'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"""""""
"remap do autocomplet
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

syntax on " Enable syntax highlighting

set showcmd " Show (partial) command in status line.

set showmatch " Show matching brackets.

" Better command-line completion
set wildmenu

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm 

set incsearch " Incremental search

set hidden "Hide buffers when they are abandoned

set mouse=a " Enable use of the mouse for all modes

set relativenumber " Display line numbers on the left 

set ruler " Display the cursor position on the last line of the screen or in the status

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4

" Automatically wrap text that extends beyond the screen length.
set wrap

set ttyfast "speed

"remap do clipboard
vnoremap <C-c> "+y
map <C-v> "+P

set clipboard=unnamed

"corzinha
"colorscheme blackdust darks
colorscheme proton


