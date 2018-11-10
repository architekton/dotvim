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
" set cino=(0

set foldmethod=syntax
set foldnestmax=1

" Disable viminfo logging
:set viminfo=

" Tabs
autocmd FileType make setlocal noexpandtab

" Highlight and remove trailing whitespace
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au BufWinEnter,InsertEnter,InsertLeave * match ExtraWhitespace /\s\+$/
au FileWritePre,FileAppendPre,FilterWritePre,BufWritePre * :%s/\s\+$//ge

" Leave no more than 1 empty line between entities
command Q execute "%!cat -s"

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Set colorscheme and background
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

" Delay between switching modes
set ttimeoutlen=10

" Transparent background
" hi Normal ctermbg=None guibg=NONE
" hi NonText ctermbg=None guibg=NONE

" NerdTree opens when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" UltiSnips
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Tagbar
nmap <F8> :TagbarToggle<CR>

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
