let mapleader=" "

nnoremap <Leader> <space> :Commands<CR>

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F4> :TagbarToggle<CR>
nnoremap <Leader>fp :FZF<CR>
nnoremap <Leader>ff :Rg!<CR>
nnoremap <Leader>fF :Rg! 
nnoremap <Leader>fb :Buffers<CR>

let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='s'

cnoreabbrev shuf Shuffle
cnoreabbrev rev Reverse
cnoreabbrev mir Mirror

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }



