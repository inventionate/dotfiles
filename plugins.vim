if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'dbmrq/vim-ditto'
Plug 'rhysd/vim-grammarous'
Plug 'ron89/thesaurus_query.vim'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'vim-latex/vim-latex'
Plug 'Raimondi/delimitMate'
Plug 'kshenoy/vim-signature'
Plug '907th/vim-auto-save'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jalvesaq/Nvim-R'
Plug 'chrisbra/NrrwRgn'
Plug 'airblade/vim-gitgutter'
Plug 'ChesleyTan/wordCount.vim'
Plug 'mhinz/vim-startify'

" Initialize plugin system
call plug#end()






