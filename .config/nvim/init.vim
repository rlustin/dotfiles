" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter'                                                   " Show git diff
Plug 'ctrlpvim/ctrlp.vim'                                                       " Path fuzzy
Plug 'elixir-lang/vim-elixir'
Plug 'eugen0329/vim-esearch'                                                    " Provides project-wide async search and replace
Plug 'iCyMind/NeoSolarized'                                                     " Solarized color theme
Plug 'neomake/neomake'
Plug 'Shougo/unite.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'                                                  " Status line
Plug 'vimlab/neojs'                                                             " Utilities for JavaScript

" Initialize plugin system
call plug#end()

syntax on                                                                       " Enable syntax highlighting
filetype on                                                                     " Enable filetype detection
filetype indent on                                                              " Enable filetype-specific indenting
filetype plugin on                                                              " Enable filetype-specific plugins

let g:mapleader = ","                                                           "Change leader to a comma

set backspace=indent,eol,start
set clipboard=unnamed

set title
set number                                                                      " Show line numbers
set cursorline                                                                  " Highlight current line
set smartcase                                                                   " Smart case search if there is uppercase
set ignorecase                                                                  " Case insensitive search
set mouse=a                                                                     " Enable mouse usage
set showmatch                                                                   " Highlight matching bracket
set fileencoding=utf-8                                                          " Set utf-8 encoding on write
set wrap                                                                        " Enable word wrap
set linebreak                                                                   " Wrap lines at convenient points
set listchars=tab:▸\ ,trail:· list                                              " Add · for trailing spaces, ▸ for tabs
set updatetime=250

" Indentation
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set smartindent
set nofoldenable

colorscheme NeoSolarized
set background=dark
let &colorcolumn="80,".join(range(120,999),",")                                 " Highlight column 80, 120 and onward

map <c-p> :CtrlPMixed<CR>                                                       " Search files

let g:airline#extensions#tabline#enabled = 2
let g:NERDSpaceDelims = 1                                                       " Add spaces after comment delimiters by default

" The Silver Searcher
if executable('ag')
  let g:esearch = {'adapter': 'ag'}
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  let g:ctrlp_dotfiles = 1
endif
