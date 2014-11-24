" Load up pathogen
execute pathogen#infect()

" Enable syntax highlighting
syntax on

" and the filetype plugin
filetype on
filetype plugin indent on

" Wrap text to 72 characters automatically
set tw=72
set formatoptions+=t

" Set tab widths and behavior sanely
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Set timeout lengths
set timeoutlen=250 " quarter-second

" Configure lightline
let g:lightline = {
    \ 'colorscheme': 'wombat'
    \ }
set laststatus=2

" Bind some keys

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Bind new escape key
imap jk <Esc>

" Bind key to reformat paragraphs
map Q gq
vmap Q gq

" Bind Tabular key
map T :Tabular block<CR>

" Bind keys for adding newlines easily
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" Bind utility keys
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
nmap \s :setlocal spell! spelllang=en_us<CR>

" Bind buffer switching keys
nmap <C-e> :edit 
nmap <C-l> :buffer#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Bind mark jumping keys
nmap <C-j> :lnext<CR>
nmap <C-k> :lprev<CR>
