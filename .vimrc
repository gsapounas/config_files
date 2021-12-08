" Enable syntax highlighting
syntax on

" Show matching brackets when text indicator is over them
set showmatch

" Ignore case when searching
set ignorecase

" Jump to matching search result
set incsearch

" Light background
set background=light
"set background=dark

" Visual mode color
hi Visual ctermbg=018

" Matching brackets color
hi MatchParen ctermbg=018

" Set column at 81 chars
set colorcolumn=81
hi ColorColumn ctermbg=018

" Enable ruler
set ruler

" General colors
hi StatusLine	ctermfg=018 ctermbg=010
hi StatusLineNC	ctermfg=018 ctermbg=010
hi VertSplit	ctermfg=018 ctermbg=010

" Display line numbers
set number
hi LineNr ctermfg=033

" Split right
set splitright

" Use system clipboard
set clipboard=unnamedplus

" Up to 20 files
" Save up to 2000 lines
" Maximum item size 2MB
" No hlsearch
set viminfo='20,<2000,s2048,h

" Highlight misspelled words
hi SpellBad ctermfg=015 ctermbg=000
hi SpellCap ctermfg=015 ctermbg=000

" Disable beeps and flashes
set visualbell
set noerrorbells
set t_vb=

" Do not expand TABs to spaces
set noexpandtab

" Jump to the last position when reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$")
	    \| exe "normal! g'\"" | endif
endif
