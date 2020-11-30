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

set colorcolumn=80

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:tex_flavor='latex'
let g:vimtex_view_general_viewer = 'sumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:vimtex_compiler_enabled=0

autocmd BufWritePost *.tex !pdflatex <afile>

hi clear Conceal
