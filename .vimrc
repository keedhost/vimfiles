set nocompatible              " required
filetype off                  " required
color srcery
syntax on
set number
set guifont=Menlo\ 12

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set encoding=utf-8
"if has('gui_running')
	"Display Hidden Characters
	""http://en.wikipedia.org/wiki/Unicode_Geometric_Shapes
	"http://www.joelonsoftware.com/articles/Unicode.html
	   set list
	   set listchars=tab:▶\ ,eol:★
	   set listchars+=trail:◥
	   set listchars+=extends:❯
	   set listchars+=precedes:❮
	   "vertical splits less gap between bars
	   set fillchars+=vert:│
"endif

"showbreak=↪ 
"set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
execute pathogen#infect()

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * NERDTree

