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
" leader key
let mapleader = ','

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

let &runtimepath.=',$HOME/.local/share/vim'
call plug#begin('~/.local/share/vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'mbbill/fencview'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nathangrigg/vim-beancount'
Plug 'rhysd/conflict-marker.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sjl/vitality.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'vim-scripts/lastpos.vim'
Plug 'wellle/targets.vim'

" NERDTree
Plug 'preservim/nerdtree'
nnoremap <leader>nt :NERDTreeFind<CR>

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='onedark'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap <silent> <c-p> :Files <CR>
nnoremap <leader>fm :History <cr>
nnoremap <leader>fg :Rg <cr>

" BufExplorer
Plug 'jlanzarotta/bufexplorer'
map <space> :BufExplorer<cr>

" Onedark theme
Plug 'joshdick/onedark.vim'
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif

" Better Whitespace
Plug 'ntpeters/vim-better-whitespace'
autocmd FileType javascript,c,cpp,java,html,ruby,css,less,python,bash,markdown,beancount EnableStripWhitespaceOnSave

" Undotree
Plug 'mbbill/undotree'
nnoremap <silent> <leader>u :UndotreeToggle<cr>

Plug 'voldikss/vim-floaterm'
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

call plug#end()

if !empty(globpath(&rtp, 'colors/onedark.vim'))
    colorscheme onedark
endif
