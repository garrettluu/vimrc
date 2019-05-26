"Garrett Luu's vimrc!

"Enable pathogen plugins
execute pathogen#infect()

filetype indent plugin on
syntax on

"Line numbers
set nu

"Auto-indenting
set ai

"Smart Indenting
set si

"Change tabs to double-space
set expandtab
set shiftwidth=2
set tabstop=2

"Pretty colors
colorscheme molokai

"Highlight all trailing whitespace
set hlsearch

highlight TrailingWhitespace ctermbg=darkred guibg=#382424
match TrailingWhitespace /\s\+$/

"Highlight all lines over 80 chars
highlight OverLength ctermbg=red guibg=#525252
2match OverLength /\%>80v.\+/

set colorcolumn=80
