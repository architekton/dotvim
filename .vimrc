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

"My preferred commenting style
autocmd FileType c,cpp setlocal comments=s:/*,m:**,ex:*/

"Leave no more than 1 empty line between entities
command Q execute "%!cat -s"
let @c = 'i/**/h'

"au BufNewFile *.c,*.h 0r ~/.vim/templates/c_header.txt
"au BufNewFile *.c,*.h exe "1," . 10 . "g/File Name:.*/s//File Name:\t\t".expand("%")
"au BufNewFile *.c,*.h exe "1," . 10 . "g/Version:.*/s//Version:\t\t1.0"
"au BufWritePre,FileWritePre *.c,*.h exe "normal ma"
"autocmd bufwritepost,filewritepost *.c execute "normal ``"
"au BufRead,BufNewFile *.c,*.h call s:CCodingStyle()

"YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

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

