call plug#begin('~/.vim/plugged')
    "Theme
    Plug 'tomasr/molokai'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'connorholyday/vim-snazzy'

    "Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "Git manager
    Plug 'tpope/vim-fugitive'

    "Finder
    Plug 'ctrlpvim/ctrlp.vim'

    "Load sytax plugins
    Plug 'd3vas3m/Improved-Syntax-Highlighting-Vim'
    "Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'justinmk/vim-syntax-extra'
    Plug 'vim-scripts/aftersyntaxc.vim'
    Plug 'vim-python/python-syntax'
    Plug 'sheerun/vim-polyglot'

    "File system explorer
    Plug 'preservim/nerdtree'

    "Insert or delete brackets, parens and quotes in pair
    Plug 'jiangmiao/auto-pairs'

    "Manage comment
    Plug 'scrooloose/nerdcommenter'

    "Multiple cursors
    Plug 'terryma/vim-multiple-cursors'

    "Coding tool
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "Better syntax for i3 file
    Plug 'PotatoesMaster/i3-vim-syntax'

    "Code searching
    Plug 'Numkil/ag.nvim'

    "All script tags
    Plug 'vim-scripts/taglist.vim'

    "Plug 'ryanoasis/vim-devicons'
    "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    call plug#end()

set number
syntax enable

"set background=dark
set cursorline
colorscheme snazzy
let g:airline_theme='snazzy'

let mapleader=","
set mouse=v

"Avoid Escape
:imap jj <Esc>


nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :TlistToggle<CR>
"Deoplete Config
"let g:deoplete#enable_at_startup = 1
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"Vim-arline-theme Config
let g:airline_theme='simple' "

let g:python_highlight_all = 1

" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1

"Vim-highlightedyank Config
hi HighlightedyankRegion cterm=reverse gui=reverse
" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

"Clang
noremap <silent> <Leader>cg :!clang++ %:p<cr>
noremap <silent> <Leader>cf :!clang-format %:p -i<cr>

noremap <silent> <Leader>ls :CocList<cr>
noremap <silent> <Leader>e :CocCommand explorer<cr>
noremap <silent> <Leader>cad :call CocAction("jumpDefinition", "vsplit")<cr>
noremap <silent> <Leader>caD :call CocAction("jumpDeclaration")<cr>
noremap <silent> <Leader>car :call CocAction("jumpReferences")<cr>
noremap <silent> <Leader>cai :call CocAction("jumpImplementation")<cr>
noremap <silent> <Leader>cah :call CocAction("doHover")<cr>
