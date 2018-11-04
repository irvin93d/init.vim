
map <F4> :TagbarToggle<CR>
" NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='s'

cnoreabbrev shuf Shuffle
cnoreabbrev rev Reverse
cnoreabbrev mir Mirror

"map <C-_> :Ag!

" Fuzzy finder
map <C-p> :FZF<CR>
"map <C-u> :Buffers<CR>
"let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

map <F5> :GoTest<CR>
map <F6> :GoCoverageToggle<CR>
