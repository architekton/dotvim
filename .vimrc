call pathogen#infect()

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

filetype plugin indent on
syntax on

set number
set relativenumber

set autoindent
set nosmartindent
set smarttab

set mouse=a

"Default syntax indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=80
set noexpandtab 
set cino=(0

"Disable viminfo logging
:set viminfo=

"My preferred commenting style
autocmd FileType c,cpp setlocal comments=s:/*,m:**,ex:*/

"Leave no more than 1 empty line between entities
command Q execute "%!cat -s"
let @c = 'i/**/h'

"YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

"GRUVBOX

"Specific aesthetics
let g:gruvbox_contrast_dark='hard'

"Set colorscheme and background
colorscheme gruvbox 
set background=dark

"VIM AIRLINE

"Theme setting
let g:airline_theme='aurora'

"Delay between switching modes
set ttimeoutlen=10 

"Transparent background
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE

"NERD TREE

"Nerd Tree opens when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

