let mapleader=" "

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
call plug#end()

" Basics
 
	set nocompatible
	syntax on
	set encoding=utf-8
	set number
	set clipboard=unnamedplus
	set laststatus=2	
	
" Colors	

	colorscheme nord
	"colorscheme one
	"colorscheme molokai

" Filetypes

	filetype on
	filetype plugin on
	filetype indent on

" Autocompletion

	set wildmode=longest,list,full

" Disables automatic commenting on newline

	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Goyo
	
	map <leader>l :Goyo
	
" COC
	
	let g:coc_global_extensions = [
		\ 'coc-pairs',
		\ 'coc-clangd',
		\ 'coc-discord',
		\ 'coc-java',
		\ 'coc-rls',	
		\ ]
				
" Other

set tabstop=4
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
