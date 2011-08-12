" be smart about screen real estate
:set tabstop=4

" be smart about searching
:set ignorecase
:set smartcase 

"open file with cursor in last place file was edited 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

