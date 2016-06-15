set nocompatible
" Vundle stuff
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-pandoc/vim-pandoc-syntax'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" end Vundle stuff

syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set ruler
" show filename
set modeline
set ls=2

set bg=dark

"noremap <Space> <PageDown>
"noremap <BS> <PageUp>
" restore position to the last line visited in the file
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm$"|endif|endif
set hlsearch
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent execute "!chmod +x <afile>" | endif | endif

au BufNewFile,BufRead *.md set ft=md


filetype on
filetype indent on
filetype plugin on

autocmd FileType python setlocal expandtab sw=4 ts=4 softtabstop=4
autocmd FileType html setlocal expandtab sw=2 ts=2 softtabstop=2
autocmd FileType R setlocal expandtab sw=2 ts=2 softtabstop=2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.js set filetype=javascript
augroup pandoc_syntax
	au! BufNewFile,BufFilePRe,BufRead *.Rmd set filetype=markdown.pandoc
augroup END
