""""""""""""""
" EDITING    "
""""""""""""""

" setup unknown filetypes
au BufNewFile,BufRead *.as setf actionscript
au BufNewFile,BufRead *.js setf javascript
au BufNewFile,BufRead *.tac setf python

"open file with cursor in last place file was edited
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""
" VISUAL     "
""""""""""""""

" get rid of beep when hitting : or scrolling all the way down on the mac
:set visualbell

" syntax is not on by default in Mac
syntax on

" highlight search results
:set hlsearch

" define ExtraWhitespace
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" highlight the pattern with the highlight group defined above
" the pattern will match trailing white space
:match ExtraWhitespace /\s\+$/

" tabs should be displayed 4 spaces wide
:set tabstop=4

""""""""""""""
" SEARCHING  "
""""""""""""""

" use smartcase, that is, only be case sensitive
" when a search is done with a capital letter
" you can ofcourse force case sensitivity with \C in the search
:set ignorecase
:set smartcase
