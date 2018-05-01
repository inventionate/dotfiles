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
Plug 'ktonga/vim-follow-my-lead'
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'Shougo/deoplete.nvim', { 'for': ['php', 'javascript', 'html', 'css', 'scss', 'sass', 'vue', 'json'] }
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'wdalmut/vim-phpunit', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'tobyS/vmustache', { 'for': 'php' }
Plug 'tobyS/pdv', { 'for': 'php' }
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript', { 'for': 'javascript'}
Plug 'posva/vim-vue'
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'sass', 'scss', 'html'] }
Plug 'tpope/vim-haml', { 'for': ['css', 'scss', 'sass', 'html'] }
Plug 'jwalton512/vim-blade', { 'for': 'php' }

" Initialize plugin system
call plug#end()

