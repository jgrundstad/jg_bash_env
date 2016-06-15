set nocompatible
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

augroup pandoc_syntax
	au! BufNewFile,BufFilePRe,BufRead *.Rmd set filetype=markdown.pandoc
augroup END
