syntax on
colorscheme default

set background=dark

map <C-p> :tabprev<CR>
map <C-n> :tabnext<CR>

au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.md set filetype=markdown

" default sensible behavior
set ts=2 sts=2 sw=2 tw=0 et ai

" language specific overrides
au FileType go setlocal ts=4 sts=4 sw=4 noet ai
au FileType python setlocal ts=4 sts=4 sw=4 et ai
