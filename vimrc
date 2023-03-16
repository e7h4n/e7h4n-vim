let &runtimepath.=',$HOME/.local/share/vim'

call plug#begin('~/.local/share/vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'e7h4n/vim-conf'
Plug 'e7h4n/e7h4n-beancount-vim'
Plug 'godlygeek/tabular'
Plug 'mbbill/fencview'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nathangrigg/vim-beancount'
Plug 'rhysd/conflict-marker.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/lastpos.vim'
Plug 'wellle/targets.vim'

" NERDTree
Plug 'preservim/nerdtree'
nnoremap <leader>nt :NERDTreeFind<CR>

" Lightline
Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'down': '7' }
let g:fzf_preview_window = []
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {'options': ['--info=inline']} , <bang>0)
command! -bang History call fzf#vim#history({'options': ['--info=inline']}, <bang>0)
command! -bang -nargs=? Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>), 1, {'options': ['--info=inline']}, <bang>0)
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
let g:better_whitespace_filetypes_blacklist=['<filetype1>', '<filetype2>', '<etc>']
let g:better_whitespace_ctermcolor='yellow'
let g:strip_whitespace_confirm=0
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1
autocmd TerminalOpen * DisableWhitespace
autocmd TerminalOpen * set nonu
autocmd TerminalOpen * set signcolumn=no

" Undotree
Plug 'mbbill/undotree'
nnoremap <silent> <leader>u :UndotreeShow<cr>

" Terminus
Plug 'wincent/terminus'
let g:TerminusMouse=0

" LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
let g:lsp_diagnostics_echo_cursor = 1

" Test
Plug 'vim-test/vim-test'
let test#strategy = 'vimterminal'
nmap <silent> <leader>tt :TestSuite<CR>

call plug#end()

if !empty(globpath(&rtp, 'colors/onedark.vim'))
    colorscheme onedark
endif
