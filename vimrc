set nocompatible

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'pearofducks/ansible-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'hashivim/vim-terraform'
"Plug 'sheerun/vim-polyglot'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'turbio/bracey.vim'
"Plug 'mattn/emmet-vim'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'preservim/nerdcommenter'
call plug#end()

syntax on
set bg=dark
filetype plugin indent on
colorscheme gruvbox
set noswapfile
set path+=**

set wildmenu
set wildmode=longest:full,list:full

set ruler
set showcmd

set incsearch
set hlsearch

"set showmatch
"hi MatchParen ctermfg=208 ctermbg=blue

set splitright
set splitbelow

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smarttab

set autoindent
set smartindent

set number
set relativenumber

set laststatus=2
set statusline+=%F

" settings for NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" settings for ansible-vim
let g:ansible_unindent_after_newline=1

"settings for airline
set laststatus=2
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='powerlineish'

"settings for ultisnip
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEditSplit="vertical"

"settings for bracey
let g:bracey_refresh_on_save=1

"settings for Emmet
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"settings for YCM
let g:ycm_autoclose_preview_window_after_completion=1

"setting for vim-terraform
"Allow vim-terraform to align settings automatically with Tabularize.
let g:terraform_align=1
let g:terraform_fmt_on_save=1

"remapping C-w to deal better with windows
nnoremap <Leader>w <C-w>
nnoremap <C-Right> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j
nnoremap <C-N> <C-w>N

"settings for auto closes brakets
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O
