if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-vinegar'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'dbmrq/vim-ditto'
Plug 'rhysd/vim-grammarous'
Plug 'ron89/thesaurus_query.vim'
Plug 'w0rp/ale'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'kshenoy/vim-signature'
Plug '907th/vim-auto-save'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'jalvesaq/Nvim-R'
Plug 'chrisbra/NrrwRgn'
Plug 'vim-latex/vim-latex'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-eunuch'
Plug 'ChesleyTan/wordCount.vim'

" Initialize plugin system
call plug#end()


