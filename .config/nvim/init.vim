" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Solarized color theme
Plug 'iCyMind/NeoSolarized'

" Provides project-wide async search and replace
Plug 'eugen0329/vim-esearch'

" Show git diff
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()

colorscheme NeoSolarized
set background=dark
