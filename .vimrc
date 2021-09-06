" Display line numbers
set number

" Enable syntax highlighting
syntax on

" Show matching brackets when text indicator is over one of them
set showmatch

" Jump to matching search result
set incsearch

" Jump to last position when reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$")
	    \| exe "normal! g'\"" | endif
endif
