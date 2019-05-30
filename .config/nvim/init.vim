" ██╗   ██╗██╗███╗   ███╗     ██████╗ ██████╗ ███╗  ██╗███████╗██╗ ██████╗ 
" ██║   ██║██║████╗ ████║    ██╔════╝██╔═══██╗████╗ ██║██╔════╝██║██╔════╝ 
" ██║   ██║██║██╔████╔██║    ██║     ██║   ██║██╔██╗██║█████╗  ██║██║  ███╗
" ╚██╗ ██╔╝██║██║╚██╔╝██║    ██║     ██║   ██║██║╚████║██╔══╝  ██║██║   ██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║    ╚██████╗╚██████╔╝██║ ╚███║██║     ██║╚██████╔╝
"   ╚═══╝  ╚═╝╚═╝     ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚══╝╚═╝     ╚═╝ ╚═════╝ 
"
" vim-plug intallation
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


set number linebreak scrolloff=5

"search
set ignorecase smartcase

noremap J 5j
noremap K 5k
noremap L $
noremap H ^

nnoremap : ;
nnoremap ; :
vnoremap : ;
vnoremap ; :

tnoremap <Esc> <C-\><C-n>



set shiftwidth=4
set softtabstop=4

set autoindent autoindent
"set autoindent cindent

set noswapfile


let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

"vim plug
call plug#begin()
Plug 'alvan/vim-closetag'
"Plug 'SirVer/ultisnips'
"Plug 'jvanja/vim-bootstrap4-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'yuttie/comfortable-motion.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'morhetz/gruvbox'
call plug#end()

"auto pairs
" au FileType html let b:AutoPairs = AutoPairsDefine({'<' : '>'})

"deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"ultisnips
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
