set number

syntax on          " Enable syntax highlighting
filetype on        " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins

set updatetime=250

set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="high"    "default value is normal"

" Size of tabulatons, which are in fact spaces
set expandtab
set tabstop=2
set shiftwidth=2

set clipboard=unnamedplus

" Font in GUI mode : https://github.com/andreberg/Meslo-Font
set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline\ 9
" remove the useless buttons from gvim
set guioptions=nomenu
" Remove menubar
set guioptions-=m
" Add vim icon and use console instead of popups
set guioptions+=ic
" Remove bottom scrolling bar.
set guioptions-=b
" Copy visual area to paste buffer
set go+=a

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  let g:ctrlp_dotfiles = 1
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" Add · for trailing spaces.
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,trail:· list

" Put a colored line at 80 characters
"highlight ColorColumn ctermbg=222 guibg=#2c2d27
set colorcolumn=80
"let &colorcolumn=join(range(81,999),",")"

" Set the text width to 80 char
"set textwidth=80

" Incremental search : search befor return is typed
set incsearch

" Highlight matched pattern when searching or replacing.
set hlsearch

" Persistent undo
set undofile
set undodir=~/.vim/undodir
set showcmd

" Cool menu which show possible autocompletion
set wildmenu
set wildmode=list:longest,full

set mouse=a

" Type :w!! when forgot sudo and editing a file.
cmap w!! w !sudo tee % >/dev/null

" Bug
imap <ESC>oA <ESC>ki
imap <ESC>oB <ESC>ji
imap <ESC>oC <ESC>li
imap <ESC>oD <ESC>hi
