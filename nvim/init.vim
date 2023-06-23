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
    Plug 'airblade/vim-gitgutter'

    "Finder
    "Plug 'ctrlpvim/ctrlp.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

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

    "Cursor animation
    Plug 'danilamihailov/beacon.nvim'

    "Markdown viewer
    Plug 'iamcco/markdown-preview.nvim'

    "Plug 'dense-analysis/ale'

    call plug#end()

set number
syntax enable

set relativenumber

"set background=dark
set cursorline
colorscheme snazzy
let g:airline_theme='snazzy'

let mapleader=","
set mouse=r

"Avoid Escape
:imap jj <Esc>


nmap <F6> :NERDTreeToggle<CR>
nmap <F7> :TlistToggle<CR>
nmap <C-p> :FZF<CR>
nmap <C-b> :b#<CR>

"Vim-arline-theme Config
let g:airline_theme='simple' "

let g:python_highlight_all = 1

let g:coc_disable_startup_warning = 1

"Vim-highlightedyank Config
hi HighlightedyankRegion cterm=reverse gui=reverse
" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000


" Remap for rename current word
"nmap <F2> <Plug>(coc-rename)
nnoremap ; :

"Git
noremap <silent> <Leader>gd :Git diff<cr>
noremap <silent> <Leader>gk :!gitk<cr>
noremap <silent> <Leader>gkf :!gitk %:p<cr>

"Open console
set splitright
noremap <silent> <Leader>t :vsplit term://zsh<cr>

"Clang
noremap <silent> <Leader>cg :!clang++ %:p<cr>
noremap <silent> <Leader>cf :!clang-format %:p -i<cr>

" Configurations générales de CoC
let g:coc_global_extensions = [
  \ 'coc-python',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ ]

" Activation de la validation du code Python avec flake8
let g:coc_json_schemas = [
  \ {
  \   'name': 'flake8',
  \   'description': 'Flake8 linter',
  \   'fileMatch': ['python'],
  \   'url': 'https://flake8.pycqa.org',
  \   'schema': 'https://raw.githubusercontent.com/PyCQA/pycodestyle/2.7.0/pycodestyle.json',
  \ },
  \ ]

" Configuration spécifique pour Python
augroup my-python-config
  autocmd!
  autocmd FileType python setlocal omnifunc=coc#refresh()
  autocmd FileType python nmap <leader>rn <Plug>(coc-rename)
augroup END

noremap <silent> <Leader>ls :CocList<cr>
noremap <silent> <Leader>e :CocCommand explorer<cr>
noremap <silent> <Leader>j :call CocAction("jumpDefinition", "vsplit")<cr>
noremap <silent> <Leader>caD :call CocAction("jumpDeclaration")<cr>
noremap <silent> <Leader>car :call CocAction("jumpReferences")<cr>
noremap <silent> <Leader>cai :call CocAction("jumpImplementation")<cr>
noremap <silent> <Leader>cah :call CocAction("doHover")<cr>


noremap  &   1
noremap  é   2
noremap  "   3
noremap  '   4
noremap  (   5
noremap  -   6
noremap  è   7
noremap  _   8
noremap  ç   9
noremap  à   0

