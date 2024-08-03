"Garrett Luu's vimrc!
"
filetype indent plugin on
syntax on

set backspace=indent,eol,start

"Line numbers
set nu

"Auto-indenting
set ai

"Smart Indenting
set si

"Change tabs to double-space
set expandtab
set shiftwidth=4
set tabstop=4

" Allow new buffers without writing current one
set hidden

" disable line wrap
set nowrap

" fix ts syntax highlighting issues
" set re=0

"cringe but necessary
set mouse=a


set colorcolumn=100

"Plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'rhysd/vim-clang-format'
  Plug 'vim-airline/vim-airline'
  Plug 'bling/vim-bufferline'
  Plug 'moll/vim-bbye'
  Plug 'Yggdroot/indentLine'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'joshdick/onedark.vim'
  Plug 'airblade/vim-gitgutter'
call plug#end()

colorscheme onedark

"Highlight all trailing whitespace
set hlsearch

highlight TrailingWhitespace ctermbg=red guibg=lightred
match TrailingWhitespace /\s\+$/

"NERDTree stuff
"start nerdtree
autocmd VimEnter * NERDTree | wincmd p
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd VimEnter * NERDTreeFind | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Close the tab if NERDTree is the only window remaining in it.
" autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1

let mapleader = ' '
nnoremap <leader>b :ls<CR>:b

" Vim airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_section_x = '%<%{pathshorten(expand("%f"))}%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#%#__accent_bold#%#__restore__#%#__accent_bold#%#__restore__#'
let g:bufferline_echo = 0
autocmd VimEnter *
\ let &statusline='%{bufferline#refresh_status()}'
  \ .bufferline#get_status_string()

" Experimental integrate terminal stuff
tnoremap <C-J> <C-W>N
tnoremap <C-K> <C-W>N:q<CR>
nnoremap <C-N> :bel term ++rows=15<CR>

let g:indentLine_char = '▏'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
set fillchars+=vert:▏
set termguicolors
