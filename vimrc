call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
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
	
	map <silent> <C-l> :Goyo<CR>
	
" COC
	
	let g:coc_global_extensions = [
		\ 'coc-pairs',
		\ 'coc-clangd',
		\ 'coc-discord',
		\ 'coc-java',
		\ 'coc-rls',	
		\ ]
	
" NERDTree
	
	nnoremap <silent> <C-n> :NERDTreeToggle<CR>
	
	" Start NERDTree when Vim is started without file arguments.
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

	" Start NERDTree when Vim starts with a directory argument.
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    	\ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

	" Exit Vim if NERDTree is the only window remaining in the only tab.
	autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Other

	set cursorline
	set tabstop=4
	set nowrap
	set incsearch
	set ignorecase
	set smartcase
	set showcmd
	set showmode
	set showmatch
	set hlsearch
