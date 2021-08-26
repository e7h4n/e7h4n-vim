let &runtimepath.=',$HOME/.local/share/vim'

" General
filetype plugin indent on                          " Automatically detect file types.
syntax on                                          " Syntax highlighting
scriptencoding utf-8

set autoindent                                     " Indent at the same level of the previous line
set hidden                                         " Allow buffer switching without saving
set ignorecase                                     " Case insensitive search
set iskeyword-=#                                   " '#' is an end of word designator
set iskeyword-=-                                   " '-' is an end of word designator
set iskeyword-=.                                   " '.' is an end of word designator
set nojoinspaces                                   " Prevents inserting two spaces after punctuation on a join (J)
set noswapfile
set signcolumn=yes
set smartcase                                      " Case sensitive when uc present
set splitbelow                                     " Puts new split windows to the bottom of the current
set splitright                                     " Puts new vsplit windows to the right of the current
set timeoutlen=300
set ttimeoutlen=0
set undofile
set undodir=~/.local/share/vim/undo
set virtualedit=onemore                            " Allow for cursor beyond last character
set wildignore+=node_modules,*-target,target,tmp_*
set wildignorecase
set wildmode=list:longest,full                     " Command <Tab> completion, list matches, then longest common part, then all.

" UI
set cursorline                                     " Highlight current line
set list                                           " Display specified blank characters
set relativenumber                                 " Line numbers on
set showmatch                                      " Show matching brackets/parenthesis

" Formatting
set expandtab                                      " Tabs are spaces, not tabs
set shiftwidth=4                                   " Use indents of 4 spaces
set softtabstop=4                                  " Let backspace delete indent
set tabstop=4                                      " An indentation every four columns

" Mappings

" term, use <leader>sh to open terminal
nnoremap <silent> <leader>sh :term ++rows=10<CR>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" Paste yank register
nmap gp "0p
nmap gP "0P

" map double j to <esc>
inoremap <silent> jj <esc>

" Emacs style course movement under command mode
cnoremap <C-A> <Home>
cnoremap <C-E> <End>

" Most prefer to toggle search highlighting rather than clear the current
" search results. To clear search highlighting rather than toggle it on
nmap <silent> <leader>/ :set invhlsearch<CR>

" Load plugins
source $HOME/.config/vim/plugin.vim

if !empty(globpath(&rtp, 'colors/onedark.vim'))
    colorscheme onedark
endif
