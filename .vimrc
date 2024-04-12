execute pathogen#infect()
filetype plugin indent on
syntax on

let g:netrw_liststyle = 3
let g:netrw_banner = 0

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END