if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" ALE
Plug 'w0rp/ale'

" git-blame.vim
Plug 'zivyangll/git-blame.vim'

" Add javascript (dunno what it does)
Plug 'pangloss/vim-javascript'

" Completion
Plug 'valloric/youcompleteme'

" Editor config
Plug 'editorconfig/editorconfig-vim'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Lightline
Plug 'itchyny/lightline.vim'

" Material Theme
Plug 'kaicataldo/material.vim'

" NERDTreee
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Surround
Plug 'tpope/vim-surround'

" Vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" ALE
let g:go_fmt_command = "goimports"
let g:ale_fix_on_save = 1
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Fuzzy finder
map <F3> :FZF<CR>

" NERDTree
map <F2> :NERDTreeToggle<CR>

" Other settings
set expandtab
set hidden
set list
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set updatetime=400

" Theme related stuff
let g:lightline = { 'colorscheme': 'material_vim' }
let g:material_terminal_italics = 1
set background=dark
colorscheme material

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

