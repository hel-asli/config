set number
set tabstop=4
set cursorline
" show matching parantheses
set showmatch
set wrap
" highlight search
" set hlsearch

syntax enable

if has('termguicolors')
    set termguicolors
endif

call plug#begin('~/.vim/plugged')
" NERDTree
Plug 'preservim/nerdtree'
" themes
Plug 'doums/darcula'
Plug 'voldikss/vim-floaterm'

Plug 'morhetz/gruvbox'
" air line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" norm
Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'
" surround
Plug 'tpope/vim-surround'

" Vim-Plug configuration


call plug#end()

colorscheme gruvbox
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" Toggle NERDTree with Ctrl+d
map <C-d> :NERDTreeToggle<CR>
map <C-t> :FloatermToggle<CR>
" map <C-n> :Norminette<CR>
