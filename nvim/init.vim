call plug#begin('~/.vim/plugged')
    Plug 'tomasr/molokai'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-fugitive'
    Plug 'kien/ctrlp.vim'
    Plug 'preservim/nerdtree'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-syntastic/syntastic'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdcommenter'
    Plug 'sbdchd/neoformat'
    Plug 'davidhalter/jedi-vim'
    Plug 'neomake/neomake'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'machakann/vim-highlightedyank'
    "Plug 'tmhedberg/SimpylFold'
    Plug 'morhetz/gruvbox'
    "Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'last-py2-support' }
call plug#end()

syntax enable
colorscheme molokai

set mouse=a

"Avoid Escape
:imap jj <Esc>

"Deoplete Config
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"Vim-arline-theme Config
let g:airline_theme='simple' "

"Neoformat Config
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

"Jedi-vim Config
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

"Neomake Config
let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('nrwi', 500)

"Vim-highlightedyank Config
hi HighlightedyankRegion cterm=reverse gui=reverse
" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000


"let g:pymode = 1
"let g:pymode_rope = 1
"set completeopt=menuone,noinsert
"let g:pymode_rope_completion = 1
"let g:pymode_rope_autoimport = 0
"let g:pymode_rope_goto_definition_bind = '<C-c>g'


