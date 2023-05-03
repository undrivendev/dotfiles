"" Base Settings
"" ========================================================

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set number relativenumber
set scrolloff=10
set showmode
set showcmd
set visualbell
set history=1000
set nrformats-=octal

if has('termguicolors')
  set termguicolors
endif

" Use system clipboard
set clipboard+=unnamed

" Search improvements
set ignorecase
set smartcase
set incsearch
set hlsearch


"" Key mappings
"" ========================================================

inoremap jk <Esc>


"" Leader Key
"" ========================================================

noremap <Space> <Nop>
let mapleader = " "
