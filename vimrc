set nocompatible
set backspace=indent,eol,start

set ignorecase
set smartcase

set sw=4
set ts=4
set autoindent

set number
set mouse=a
set notimeout
set ruler
set showcmd
set incsearch
set hls is
filetype plugin indent on

map <F5> i{<Esc>ea}<Esc>
set whichwrap=b,s,<,>,[,]
syntax enable
syntax on
colorscheme desert

noremap <F7> <Esc>gT
noremap <F8> <Esc>gt

"use system clipboard for copy and paste
"set clipboard=unnamedplus
set clipboard=unnamed "for osx

" Copy from vim: enter visual mode, select text, press Control-C.
" Paste to somewhere: press command-v (for OSX) 
vmap <C-c> :w !pbcopy<CR><CR>
" Cut 
vmap <C-x> :!pbcopy<CR>   

"remap jj to escape in insert mode. You'll never type jj anyway.
inoremap jj <Esc>
nnoremap JJJJ <Nop>

set tags=./tags,tags;$HOME
set autochdir

" Tell vim to remember certain things when we exit
set viminfo='10,\"100,:20,%,n~/.viminfo

" restore curse to last position
function! ResCur()
	if line("'\"") <= line ("$")
		normal! g'"
		return 1
	endif
endfunction

augroup resCur
	autocmd!
	autocmd BufWinEnter * call ResCur()
augroup END

" pathogen.vim
execute pathogen#infect()

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_use_Right_Window=1
let Tlist_File_fold_Auto_Close=1

" autotags
let g:autotags_no_blobal = 1
let g:autotags_cscope_exe = "cscope"
let g:autotags_cscope_file_extensions = ".cpp .cc .cxx .hpp .h .c .cu .cuh"
let g:autotags_export_cscope_dir = 1
