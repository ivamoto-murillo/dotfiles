" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using neobundle plugin manager.
" Once you've updated the list of plugin, you can run neobundle update by issuing
" the command :NeoBundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/bundles.vim -N "+set hidden" "+syntax on" +NeoBundleClean! +NeoBundleInstall +qall
" Filetype off is required by neobundle
filetype off

set rtp+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

" let NeoBundle manage NeoBundle (required)
NeoBundleFetch "Shougo/neobundle.vim"

" Other languages
NeoBundle "sheerun/vim-polyglot"
NeoBundle "guileen/vim-node"
NeoBundle "mxw/vim-jsx"
NeoBundle "josuesasilva/vim-spell-pt-br"

" Html, Xml, Css, Markdown...
" NeoBundle "jtratner/vim-flavored-markdown.git"
NeoBundle "tristen/vim-sparkup"
NeoBundle "nelstrom/vim-markdown-preview"
NeoBundle "skwp/vim-html-escape"

" Git related...
" NeoBundle "idanarye/vim-merginal"
" NeoBundle "gregsexton/gitv"
NeoBundle "tjennings/git-grep-vim"
NeoBundle "tpope/vim-fugitive"

" General text editing improvements...
NeoBundle "lfilho/cosco.vim"
NeoBundle "tommcdo/vim-exchange"
NeoBundle "AndrewRadev/sideways.vim"
NeoBundle "AndrewRadev/splitjoin.vim"
NeoBundle "Raimondi/delimitMate"
NeoBundle "Shougo/neocomplete.git"
NeoBundle "briandoll/change-inside-surroundings.vim.git"
NeoBundle "garbas/vim-snipmate.git"
NeoBundle "godlygeek/tabular"
NeoBundle "honza/vim-snippets"
NeoBundle "nelstrom/vim-visual-star-search"
NeoBundle "justinmk/vim-sneak"
NeoBundle "tomtom/tcomment_vim.git"
NeoBundle "tpope/vim-bundler"
NeoBundle "vim-scripts/IndexedSearch"
NeoBundle "vim-scripts/camelcasemotion.git"
NeoBundle "vim-scripts/matchit.zip.git"
NeoBundle "kristijanhusak/vim-multiple-cursors"

" General vim improvements
NeoBundle 'Shougo/vimproc', {
            \ 'build' : {
            \     'windows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'linux': 'make',
            \     'unix' : 'gmake',
            \    },
            \ }
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/neomru.vim"
NeoBundle "Keithbsmiley/investigate.vim"
NeoBundle "MarcWeber/vim-addon-mw-utils.git"
NeoBundle "bogado/file-line.git"
NeoBundle "majutsushi/tagbar.git"
NeoBundle "mattn/webapi-vim.git"
NeoBundle "scrooloose/nerdtree.git"
NeoBundle "scrooloose/syntastic.git"
NeoBundle "sjl/gundo.vim"
NeoBundle "skwp/greplace.vim"
NeoBundle "tomtom/tlib_vim.git"
NeoBundle "tpope/vim-abolish"
NeoBundle "tpope/vim-endwise.git"
NeoBundle "tpope/vim-ragtag"
NeoBundle "tpope/vim-repeat.git"
NeoBundle "tpope/vim-surround.git"
NeoBundle "tpope/vim-unimpaired"
NeoBundle "vim-scripts/AnsiEsc.vim.git"
NeoBundle "vim-scripts/AutoTag.git"
NeoBundle "vim-scripts/lastpos.vim"
NeoBundle "vim-scripts/sudo.vim"
NeoBundle "xsunsmile/showmarks.git"
NeoBundle "MarcWeber/vim-addon-local-vimrc"

" Text objects
NeoBundle "gcmt/wildfire.vim"
NeoBundle "austintaylor/vim-indentobject"
NeoBundle "coderifous/textobj-word-column.vim"
NeoBundle "kana/vim-textobj-datetime"
NeoBundle "kana/vim-textobj-entire"
NeoBundle "kana/vim-textobj-function"
NeoBundle "kana/vim-textobj-user"
NeoBundle "lucapette/vim-textobj-underscore"
NeoBundle "nathanaelkane/vim-indent-guides"
NeoBundle "thinca/vim-textobj-function-javascript"
NeoBundle "vim-scripts/argtextobj.vim"
NeoBundle "othree/javascript-libraries-syntax.vim"

" Cosmetics, color scheme, Airline...
NeoBundle "editorconfig/editorconfig-vim"
NeoBundle "chrisbra/color_highlight.git"
NeoBundle "tomasr/molokai"
" NeoBundle "chriskempson/base16-vim"
NeoBundle "itchyny/lightline.vim"
NeoBundle "vim-scripts/TagHighlight.git"
" Required for Gblame in terminal vim
NeoBundle "godlygeek/csapprox.git"

if system('uname')=~'Darwin'
    NeoBundle "zerowidth/vim-copy-as-rtf"
endif

" Customization
" The plugins listed in ~/.vim/.bundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.bundles.local"))
  source ~/.yadr/vim/.bundles.local
endif

call neobundle#end()

"Filetype plugin indent on is required by NeoBundle
filetype plugin indent on

" Installation check.
NeoBundleCheck
