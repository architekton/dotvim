call pathogen#infect()

syntax on
filetype plugin indent on

let mapleader=' '

" Line numbers
set number
set relativenumber

" Encodings
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Mouse off
set mouse=

" Indentation
set autoindent
set nosmartindent
set smarttab
set expandtab

" Indentation lengths
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Folding
set foldmethod=syntax
set foldnestmax=1

" Disable viminfo logging
set viminfo=

" Disable saves
set nobackup
set noswapfile

" Delay between switching modes
set ttimeoutlen=10
set ttyfast

" Completion
set completeopt=menu,menuone,preview,noselect,noinsert

" Custom indentation settings
autocmd FileType make setlocal ts=8 sw=8 sts=0 noet
autocmd FileType PKGBUILD setlocal ts=2 sw=2 sts=2 noet

" Highlight and remove trailing whitespace -- redundant because of ale
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au BufWinEnter,InsertEnter,InsertLeave * match ExtraWhitespace /\s\+$/
au FileWritePre,FileAppendPre,FilterWritePre,BufWritePre * :%s/\s\+$//ge

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

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

" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" PLUGIN CONFIGURATIONS

" Set colorscheme and background
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

hi Normal ctermbg=NONE guibg=NONE

" Vim-go
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Highlight same vars
let g:go_auto_sameids = 1
" Auto import
let g:go_fmt_command = "goimports"

" Ale
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\}
let g:ale_linters = {
\   'rust': ['rls', 'cargo']
\}
let g:ale_rust_cargo_use_clippy = 1

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

noremap <Leader>ad :ALEGoToDefinition<CR>
noremap <Leader>af :ALEFix<CR>
noremap <Leader>ah :ALEHover<CR>
noremap <Leader>ar :ALEFindReferences<CR>

" NerdTree
let g:NERDTreeWinSize = 50
" NerdTree opens when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" UltiSnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<ctrl-b>"
