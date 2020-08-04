" ██╗   ██╗██╗███╗   ███╗     ██████╗ ██████╗ ███╗  ██╗███████╗██╗ ██████╗ 
" ██║   ██║██║████╗ ████║    ██╔════╝██╔═══██╗████╗ ██║██╔════╝██║██╔════╝ 
" ██║   ██║██║██╔████╔██║    ██║     ██║   ██║██╔██╗██║█████╗  ██║██║  ███╗
" ╚██╗ ██╔╝██║██║╚██╔╝██║    ██║     ██║   ██║██║╚████║██╔══╝  ██║██║   ██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║    ╚██████╗╚██████╔╝██║ ╚███║██║     ██║╚██████╔╝
"   ╚═══╝  ╚═╝╚═╝     ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚══╝╚═╝     ╚═╝ ╚═════╝ 
"
" vim-plug intallation
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


set number
set relativenumber
set linebreak
set scrolloff=5

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" search
set ignorecase smartcase

" set display of hex values
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

noremap J 5j
noremap K 5k
noremap L g_
noremap H ^

nnoremap : ;
nnoremap ; :
vnoremap : ;
vnoremap ; :

tnoremap <Esc> <C-\><C-n>

" create undo dir if doesn't exist
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
" use undo dir
set undodir=~/.vim/undo-dir
set undofile



set shiftwidth=4
set softtabstop=4

set autoindent autoindent
"set autoindent cindent

set noswapfile


let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" vim plug
call plug#begin('~/.config/nvim/plugged')
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'preservim/nerdtree'	"TODO
Plug 'RRethy/vim-illuminate'
Plug 'lilydjwg/colorizer'
call plug#end()

" auto pairs
au FileType html let b:AutoPairs = AutoPairsDefine({'<' : '>'})

" deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" NERDTree
noremap <Leader><Space> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['^\.git$', '^node_modules$']
command NTF NERDTreeFind
" open NERDTree if a blank file was opened
autocmd VimEnter * if !argc() | NERDTree | endif 
autocmd BufEnter * if !argc() | NERDTreeMirror | endif

" vim-illuminate
"hi link illuminatedWord Visual

