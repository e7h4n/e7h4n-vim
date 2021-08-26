# e7h4n-vim: e7h4n's Vim Distribution

e7h4n-vim is a distribution of plugins and configurations for Vim.

## Installation

```bash
curl https://raw.githubusercontent.com/e7h4n/e7h4n-vim/master/bootstrap.sh -L -o - | sh
```

## Update

```bash
cd $HOME/.config/vim
git pull
vim +PlugUpgrade +PlugUpdate +PlugClean +q
```

## Configuration change

### Feature enabled
* [autoindent](http://vimdoc.sourceforge.net/htmldoc/options.html#'autoindent')
* [undofile](http://vimdoc.sourceforge.net/htmldoc/options.html#'undofile')
* [ignorecase](http://vimdoc.sourceforge.net/htmldoc/options.html#'ignorecase') & [smartcase](http://vimdoc.sourceforge.net/htmldoc/options.html#'smartcase')
* [cursorline](http://vimdoc.sourceforge.net/htmldoc/options.html#'cursorline')
* [relativenumber](http://vimdoc.sourceforge.net/htmldoc/options.html#'relativenumber')
* [signcolumn=yes](http://vimdoc.sourceforge.net/htmldoc/options.html#'signcolumn')

### Feature disabled
* [swapfile](http://vimdoc.sourceforge.net/htmldoc/options.html#'swapfile')
* [joinspaces](http://vimdoc.sourceforge.net/htmldoc/options.html#'joinspaces')

### Formatting
* [expandtab](http://vimdoc.sourceforge.net/htmldoc/options.html#'expandtab')
* [shiftwidth=4](http://vimdoc.sourceforge.net/htmldoc/options.html#'shiftwidth')
* [softtabstop=4](http://vimdoc.sourceforge.net/htmldoc/options.html#'softtabstop')
* [tabstop=4](http://vimdoc.sourceforge.net/htmldoc/options.html#'tabstop')

### Theme

[onedark.vim](https://github.com/joshdick/onedark.vim) if installed.

### Keymap

* use `jj` as `<ESC>`.
* use `,` as `<Leader>`.
* make `Y` as `y$` to be consistent with C and D.
* `gp` and `gP` to paste yank register.
* `<C-A>` and `<C-E>` implement emacs style command line cursor movement.
* `<leader>/` to toggle highlight search.

## Plugins

The following plugins will be tuned:

* [vim-airline](https://github.com/vim-airline/vim-airline): use one theme.
* [bufexplorer](https://github.com/jlanzarotta/bufexplorer): map `<SPC>` to open bufexplorer.
* [fzf.vim](https://github.com/junegunn/fzf.vim):
  * `<Ctrl>P` to search file by file path.
  * `<Leader>fg` to search file content by [rg](https://github.com/BurntSushi/ripgrep).
  * `<Leader>fm` to search history file by file path.
* [nerdtree](https://github.com/scrooloose/nerdtree): use `<Leader>nt` open NerdTree.
* [undotree](https://github.com/mbbill/undotree): use `<Leader>u` open UndoTree.
* [vim-better-space](https://github.com/ntpeters/vim-better-whitespace): default enable for `javascript`, `c`, `cpp`, `java`, `html`, `ruby`, `css`, `less`, `python`, `bash`, `markdown`.
* [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm'):
  * `<F7>` to open new float terminal window.
  * `<F8>` to switch previous terminal window.
  * `<F9>` to switch next terminal window.
  * `<F12>` to toggle terminal window visibility.

## License

MIT
