set nocompatible

"Vim-plug configurations
"Specify a directory for plugins
call plug#begin('/Work/vim.plugged')
Plug 'tomasr/molokai'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-after'
"Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'rodjek/vim-puppet'
Plug 'valloric/youcompleteme'
Plug 'jdkanani/vim-material-theme'
Plug 'vim-latex/vim-latex'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'dhruvasagar/vim-table-mode'
Plug 'rlofc/vorg'
call plug#end()


syntax enable
set bg=dark
colorscheme molokai
set t_Co=256

set noswapfile

filetype plugin indent on

set backspace=indent,eol,start

set cindent
set cinoptions=l1,c4,(s,U1,w1,m1,j1,J1

set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4
set shiftround
set tabstop=4

set wildmenu
set wildmode=longest:full,list:full

nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

"settings for snipmate
imap <C-a> <Plug>snipMateNextOrTrigger

"settings for latexsuite

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_AdvancedMath=0
let g:Tex_EnvironmentMaps=0
let g:Tex_FontMaps=0
let g:Tex_SectionMaps=0
let g:Tex_CompileRule_pdf='latexmk -pdf -f $*'
set iskeyword+=:

"settings for airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='powerlineish'
let g:airline_theme='bubblegum'

"settings for pandoc
let g:pandoc#syntax#conceal#use=0

"settings for tmuxline
"let g:airline#extensions#tmuxline#enable = 1
"let airline#extensions#tmuxline#snapshot_file = "~/.config/tmux/tmux-statusline-color.conf"
"let airline#extensions#promptline#snapshot_file = "~/.shell_tmuxprompt.sh"
"let g:airline#extensions#promptline#enabled = 1

" settings for NERDTree
"map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" settings for syntastic
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" settings for vim-table-mode
" get ReST-compatible table
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

" settings for c++ IDE
set exrc
set secure

"setting for spell check
map <Leader>s <Esc>:!aspell -c --dont-backup "%"<CR>:e! "%"<CR><CR>

