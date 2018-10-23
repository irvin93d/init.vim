if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" Appearance
Plug 'kaicataldo/material.vim'
Plug 'itchyny/lightline.vim'

" Completion and linting
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi', { 'for': ['python'] }
Plug 'ervandew/supertab'
Plug 'w0rp/ale'

" Editing
Plug 'editorconfig/editorconfig-vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

call plug#end()

" ALE
let g:go_fmt_command = "goimports"
"let g:ale_fix_on_save = 1
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

let g:SuperTabDefaultCompletionType = "context"



let g:go_guru_scope = ["gitlab.services.ams.osa/opera-mobile/opera-pay/"]

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" Deoplete
let g:deoplete#enable_at_startup = 1

" Fuzzy finder
map <C-p> :FZF<CR>
"map <C-u> :Buffers<CR>
"let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Format json
command -range=% Jsonf <line1>,<line2>!python -m json.tool

command -range=% Shuf <line1>,<line2>!shuf
cnoreabbrev shuf Shuf
command -range=% Rev <line1>,<line2>!tac
cnoreabbrev rev Rev
command -range=% Mir <line1>,<line2>!rev
cnoreabbrev mir Mir

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

map <F4> :TagbarToggle<CR>

" NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='s'

map <F5> :GoTest<CR>
map <F6> :GoCoverageToggle<CR>

map <C-S-p> :Ag!

" Other settings
set expandtab
set hidden
set list
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set updatetime=400

" Set Jenkins
au BufNewFile,BufRead Jenkinsfile setf groovy

" Theme related stuff
let g:lightline = {
      \ 'colorscheme': 'material_vim',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
let g:material_terminal_italics = 1
set background=dark
colorscheme material

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

