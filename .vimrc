call pathogen#infect()


filetype plugin indent on
syntax on

set number
set relativenumber

set autoindent
set nosmartindent
set smarttab

set mouse=

set encoding=utf-8

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set textwidth=79
set cino=(0

" Disable viminfo logging
:set viminfo=

" C, cpp commenting style
autocmd FileType c,cpp setlocal comments=s:/*,m:**,ex:*/

" Tabs
autocmd FileType c,cpp,make setlocal noexpandtab

" Highlight and remove trailing whitespace
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au BufWinEnter,InsertEnter,InsertLeave * match ExtraWhitespace /\s\+$/
au FileWritePre,FileAppendPre,FilterWritePre,BufWritePre * :%s/\s\+$//ge

" Leave no more than 1 empty line between entities
command Q execute "%!cat -s"

" YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

let g:gruvbox_contrast_dark='hard'

" Set colorscheme and background
set background=dark
colorscheme gruvbox

" Airline
let g:airline_theme='aurora'

" Delay between switching modes
set ttimeoutlen=10

" Transparent background
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE

" NerdTree opens when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Disable arrows in all modes
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
