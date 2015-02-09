" Load up pathogen
execute pathogen#infect()

" Enable syntax highlighting
syntax on

" and the filetype plugin
filetype on
filetype plugin indent on

" Disable compatibility mode (I'm not a native vi user)
set nocompatible

" Disable modelines, which could potentially be malicious.
set modelines=0

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
" autocmd WinLeave * :call NumberToggle("num")
" autocmd WinEnter * :call NumberToggle("rnum")
" autocmd FocusLost * :call NumberToggle("num")
" autocmd FocusGained * :call NumberToggle("rnum")

" Automatically switch to absolute numbers when inserting, and relative
" in normal mode.
autocmd InsertEnter * :call NumberToggle("num")
autocmd InsertLeave * :call NumberToggle("rnum")

" Use relative numbers by default.
call NumberToggle("rnum")


" Wrap text to 72 characters automatically
set textwidth=72
set formatoptions+=t

" Use 'smart' case searching
set smartcase

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

" Use Y to yank to the end of the line
nmap Y y$

" Bind Tabular key
map T :Tabular block<CR>

" Bind keys for adding newlines easily
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" Set the leader key
let mapleader=","

" Bind utility keys
nmap <silent> <leader>l :call NumberToggle()<CR>
nmap <silent> <leader>o :set paste!<CR>
nmap <silent> <leader>s :setlocal spell! spelllang=en_us<CR>

" Bind buffer switching keys
nmap <C-e> :edit 
nnoremap <C-o> :NERDTreeToggle<CR>
nmap <C-l> :buffer#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Bind mark jumping keys
nmap <C-j> :lnext<CR>
nmap <C-k> :lprev<CR>
