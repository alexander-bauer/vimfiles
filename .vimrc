" Enable syntax highlighting
syntax on

" and the filetype plugin
filetype on

" Wrap text to 72 characters automatically
set tw=72
set formatoptions+=t

" Set tab widths and behavior sanely
set shiftwidth=4
set tabstop=4
"set softtabstop=4
set expandtab

" Bind new escape key
imap jk <Esc>

" Set timeout lengths
set timeoutlen=250 " quarter-second

" Bind some keys

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
