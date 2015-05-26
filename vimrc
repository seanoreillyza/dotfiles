set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



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
" colorscheme solarized

" for html tags
filetype plugin on
set runtimepath^=~/.vim/bundle/ctrlp.vim
