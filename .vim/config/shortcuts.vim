" , is a nice leader key
let mapleader = ","

noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

map <F3> :NERDTreeToggle<CR>
map <c-p> :CtrlPMixed<CR>

" Press F4 to clear highlighting.
map <F4> :noh<CR>

" F5 toogles to Gundo panel
nnoremap <F5> :GundoToggle<CR>

" Execute current spec
map <F12> :! bin/rspec %<CR>

" Moving lines or blocks
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Use TAB in normal mode to fold/unfold
set foldmethod=indent
map <Tab> za
au BufReadPost * normal zR
