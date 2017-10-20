"""
" General settings
"""
map <space> <leader>
source $VIMRUNTIME/defaults.vim
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

set encoding=utf-8
set backupdir=~/vimtmpdir,.
set directory=~/vimtmpdir,.

"""
" Searching
"""
set ignorecase
set incsearch
set hlsearch

" double whack to clear search
nnoremap // :let @/=""<CR>
nnoremap <leader>/ *
nnoremap <leader>? #

"""
" Tab behavior
"""
set tabstop=4
set shiftwidth=4        " 4 characters for indenting
set expandtab           " tabs to spaces

"""
" Window / view tweaking
"""
set relativenumber      " relative line numbers to the current line
set number              " combined with the above only make current line the absolute number

colorscheme zellner     " Non-terrible colorscheme for pair programming on crappy monitors

"""
" Custom Bindings
"""
noremap <leader>j <C-D>
noremap <leader>k <C-U>

" more ergonomic bindings
noremap s z
noremap ss zz
noremap so zR
noremap sc zM
noremap e $

" Y to yank line without newline or leading whitespace
noremap Y mp^y$`p
