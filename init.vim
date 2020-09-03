"Enables filetype detection, filetype-specific scripts (ftplugins),
"and filetype-specific indent scripts.
filetype plugin indent on

"fix backspace behavior
"not needed in neovim
"set backspace=indent,eol,start
"
syntax on
set visualbell

set encoding=utf8
set nocompatible
set autoindent
set nomodeline " disable modeline vulnerability  "

" use 4 spaces for tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround 

set hidden
set laststatus=2 

" Set linenumbers
set number
set relativenumber
set wrap 

" column ruler at 100
set ruler
set colorcolumn=100 
set showmatch
set hlsearch
set ignorecase
set smartcase

nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K> 
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H>

call plug#begin()

Plug 'lervag/vimtex'
    let g:tex_flavor = "latex" 
    "let g:vimtex_view_method = 'SumatraPDF'
    let g:vimtex_quickfix_mode=0
    let g:vimtex_view_general_viewer = 'sumatraPDF'
    let g:vimtex_view_general_options = '-reuse-instance @pdf'
    let g:vimtex_view_general_options_latexmk = '-reuse-instance' 

Plug 'junegunn/vim-easy-align'

Plug 'itchyny/lightline.vim'

Plug 'SirVer/ultisnips' 

" snippets are separated from
" the engine. Add this if you want them:
Plug 'honza/vim-snippets'  

" deoplete
if has('nvim')  
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else  
        Plug 'Shougo/deoplete.nvim'  
        Plug 'roxma/nvim-yarp'  
        Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
"            \,sm:block-blinkwait175-blinkoff150-blinkon175
" Changes the cursor shape. (Flashing pipe in insert mode, block in normal
" node.)

"let $TERM='conemu'
autocmd BufNewFile,BufRead * setlocal formatoptions-=o

let g:python_host_prog = 'C:\Program Files (x86)\Python37-32\python.exe'
let g:python3_host_prog = 'C:\Program Files (x86)\Python37-32\python.exe'
