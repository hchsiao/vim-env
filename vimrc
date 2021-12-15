execute pathogen#infect()
filetype plugin indent on

let g:tex_flavor='latex'

set number
set nowrap
set backspace=indent,eol,start
set nocompatible
set encoding=utf8
set showcmd

" set status line
set laststatus=2
" enable powerline-fonts
let g:airline_powerline_fonts = 0
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" theme
syntax enable
set background=dark                                                                                      
set t_Co=256
let g:solarized_termcolors=256
colorscheme gruvbox

" tab2space
set tabstop=2
set shiftwidth=2
set expandtab

augroup python
  autocmd!
  autocmd FileType python setlocal colorcolumn=79
augroup end

" cnoreabbrev run !./run.sh
" cnoreabbrev impl !./run_impl.sh
" cnoreabbrev bash !bash
" cnoreabbrev build !cd dpi && ./run.sh

"set foldexpr=getline(v:lnum-1)=~'\\S'&&getline(v:lnum)=~'^\\s*$'?0:getline(v:lnum)=~'^\\s*\\/\\{2\\}\\s*(fold)'?1:'='
set foldmethod=expr

nnoremap <Space> /\v(^\|\A)\zs\a<cr>
onoremap <Space> /\v(^\|\A)\zs\a<cr>
xnoremap <Space> /\v(^\|\A)\zs\a<cr>

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

set relativenumber

if has("unix")
  let s:uname = system("echo -n \"$(uname)\"")
  if !v:shell_error && s:uname == "Linux"
    set t_BE=
  endif
endif

