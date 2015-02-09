" Load up pathogen
execute pathogen#infect()

" Enable syntax highlighting
syntax on

" and the filetype plugin
filetype on
filetype plugin indent on

" Also, set the colorscheme.
colorscheme gotham256

" Make line numbers easy to deal with, and enable relative line numbers
function! NumberToggle(...)
  if a:0 > 0
    let l:setstate = a:1
  else
    let l:setstate = "next"
  endif

  if(l:setstate == "next")
    if &relativenumber == 1
      set norelativenumber
      set number
    elseif &number == 1
      set nonumber
      set relativenumber
    else
      set nonumber
      set norelativenumber
    endif

  elseif(l:setstate == "num")
    set norelativenumber
    set number
  elseif(l:setstate == "rnum")
    set nonumber
    set relativenumber
  else
    set nonumber
    set norelativenumber
  endif
endfunction

" Automatically toggle between relative and absolute numbers depending
" on window context.
" Switch to absolute line numbers when the window loses focus and
" switch back
" to relative line numbers when the focus is regained.
autocmd WinLeave * :call NumberToggle("num")
autocmd WinEnter * :call NumberToggle("rnum")
autocmd FocusLost * :call NumberToggle("num")
autocmd FocusGained * :call NumberToggle("rnum")

autocmd InsertEnter * :call NumberToggle("num")
autocmd InsertLeave * :call NumberToggle("rnum")

call NumberToggle("rnum")


" Wrap text to 72 characters automatically
set textwidth=72
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
nnoremap <silent> <C-j> :nohl<CR><C-l>

" Bind new escape keys
imap jk <Esc>
imap <C-l> <Esc>:

" Bind key to reformat paragraphs
map Q gq
vmap Q gq

" Bind Tabular key
map T :Tabular block<CR>

" Bind keys for adding newlines easily
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" Bind utility keys
nmap <silent> \l :call NumberToggle()<CR>
nmap <silent> \o :set paste!<CR>
nmap <silent> \s :setlocal spell! spelllang=en_us<CR>

" Bind buffer switching keys
nmap <C-e> :edit 
nmap <C-l> :buffer#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Bind mark jumping keys
nmap <C-j> :lnext<CR>
nmap <C-k> :lprev<CR>
