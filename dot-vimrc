set nocompatible

set backspace=indent,eol,start
set encoding=utf-8
set hidden
set incsearch
set laststatus=0
set modelines=0
set nobackup
set nohlsearch
set noswapfile
set nowb
set nowrap
set number
set ruler
set scrolloff=3
set viminfo=""

syntax on
colorscheme vimbrant

map <C-p> :tabprev<CR>
map <C-n> :tabnext<CR>

augroup html
   au BufNewFile *.html 0r ~/.vim/skel/html.skel
augroup end

augroup css
  au BufNewFile *.css 0r ~/.vim/skel/css.skel
augroup end

au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.sbt set filetype=sbt
au BufRead,BufNewFile *.scala set filetype=scala

" default sensible behavior
set ts=2 sts=2 sw=2 tw=0 et ai

" language specific overrides
au FileType go setlocal ts=4 sts=4 sw=4 noet ai
au FileType javascript setlocal ts=2 sts=2 sw=2 et ai
au FileType python setlocal ts=4 sts=4 sw=4 et ai
au FileType scala setlocal ts=2 sts=2 sw=2 et ai
