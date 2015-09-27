" Use Vim settings, rather than Vi settings (much better!).
" " This must be first, because it changes other options as a side effect.
" set nocompatible
"
" " Use pathogen to easily modify the runtime path to include all
" " plugins under the ~/.vim/bundle directory
call pathogen#infect()
"
" " allow backspacing over everything in insert mode
set backspace=indent,eol,start 

" In many terminal emulators the mouse works just fine, thus enable it.
 if has('mouse')
   set mouse=a
 endif

 if &t_Co > 2 || has("gui_running")
  syntax on
 endif

:autocmd BufEnter * call DoWordComplete() 


" no swap files!
 set nobackup
 set nowritebackup
 set noswapfile
 

" Enable file type detection.
" " Use the default filetype settings, so that mail gets 'tw' set to 72,
" " 'cindent' is on in C files, etc.
" " Also load indent files, to automatically do language-dependent indenting.
 filetype plugin indent on

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis
endif

" Map Command-# and Ctrl-# to switch tabs
 map  <D-0> 0gt
 imap <D-0> <Esc>0gt
 map  <C-0> 0gt
 imap <C-0> <Esc>0gt
 map  <D-1> 1gt
 imap <D-1> <Esc>1gt
 map  <C-1> 1gt
 imap <C-1> <Esc>1gt
 map  <D-2> 2gt
 imap <D-2> <Esc>2gt
 map  <D-3> 3gt
 imap <D-3> <Esc>3gt
 map  <D-4> 4gt
 imap <D-4> <Esc>4gt
 map  <D-5> 5gt
 imap <D-5> <Esc>5gt
 map  <D-6> 6gt
 imap <D-6> <Esc>6gt
 map  <D-7> 7gt
 imap <D-7> <Esc>7gt
 map  <D-8> 8gt
 imap <D-8> <Esc>8gt
 map  <D-9> 9gt
 imap <D-9> <Esc>9gt

" easier line completion
inoremap ^L ^X^L


set clipboard=unnamed
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab         " always use spaces instead of tab characters
