set nocompatible
\" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!/Applications/MAMP/bin/php/php5.5.10/bin/php %<CR>

\" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/Applications/MAMP/bin/php/php5.5.10/bin/php  -l %<CR>


colorscheme blue
colorscheme darkblue
set nu

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab


".vimrc

map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

set guifont=Menlo:h14
syntax enable
set background=dark
colorscheme solarized

" for html tags
filetype plugin on
