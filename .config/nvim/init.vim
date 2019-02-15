" ██╗   ██╗██╗███╗   ███╗
" ██║   ██║██║████╗ ████║
" ██║   ██║██║██╔████╔██║
" ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═══╝  ╚═╝╚═╝     ╚═╝


set number

noremap J 5j
noremap K 5k
noremap L $
noremap H ^

set shiftwidth=4
set softtabstop=4

set autoindent autoindent
"set autoindent cindent

set noswapfile


"vim plug
call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

"auto pairs
au FileType html let b:AutoPairs = AutoPairsDefine({'<' : '>'})
