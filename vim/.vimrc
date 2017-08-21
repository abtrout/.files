execute pathogen#infect()

syntax on
colorscheme default

set background=dark
set laststatus=0

map <C-p> :tabprev<CR>
map <C-n> :tabnext<CR>

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
