" setup vundle {
set nocompatible
filetype off

let iCanHazVundle=1

if !filereadable(expand('~/.vim/bundle/vundle/README.md'))
	echo "Installing Vundle..."
	echo ""

	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle

	let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'ekalinin/Dockerfile.vim'
Plugin 'ervandew/supertab'
Plugin 'junegunn/vim-easy-align'
Plugin 'nordtheme/vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-vividchalk'
Plugin 'vim-airline/vim-airline'

call vundle#end()

if iCanHazVundle == 0
	echo "Installing Plugin..."
	echo ""

	:PluginInstall
endif
"}

" filetype config {
filetype plugin on
filetype indent on
"}

" misc stuff {
set nocompatible
set modeline
set history=1000
set backspace=indent,eol,start
set selection=inclusive
set completeopt=longest,menu,preview
set diffopt+=vertical
set autoread
"}

" tab related {
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set cindent
"}

" status related {
set ruler
set showcmd
set nonumber
set shortmess=aoOtTI
set laststatus=1
"}

" search related {
set hlsearch
set incsearch
set ignorecase
set smartcase
set scrolloff=3
set sidescrolloff=5
"}

" bell related {
set noerrorbells
set vb t_vb=
"}

" backup related {
set nobackup
"}

" swap related {
set swapfile
"}

" grep related {
set grepprg=grep\ -nH\ $*
"}

" folding related {
set foldcolumn=0
set foldmethod=indent
set foldnestmax=100
set nofoldenable
set foldlevel=1
"}

" coloring related {
set background=dark
set t_Co=256
"}

" show syntax {
syntax on
"}

" select scheme {
colorscheme nord
"}

" folding mapping {
map <F5> zo
map <F6> zc
map <F7> zR
map <F8> zM
"}

" switch tabs {
map <F9> gT
map <F10> gt
"}

" past switch {
set pastetoggle=<F11>
"}

" incsearch plugin {
hi search ctermfg=red ctermbg=yellow
map /	<Plug>(incsearch-forward)
map ?	<Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"}

" airline plugin {
let g:airline#extensions#branch#enable=1
let g:airline#extensions#modified#enable=1
let g:airline#extensions#paste#enable=1
let g:airline#extensions#whitespace#enable=1
"}

" easyalign plugin {
vmap <Enter>	 <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
vmap . <Plug>(EasyAlignRepeat)
"}
