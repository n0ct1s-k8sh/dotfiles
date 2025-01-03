syntax on

set number
set cursorline
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set autoindent
set mouse=a
set clipboard=unnamedplus

call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'
	Plug 'preservim/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'psliwka/vim-smoothie'
call plug#end()
