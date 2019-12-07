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
Plug 'dense-analysis/ale'

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'maksimr/vim-jsbeautify'

"Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

" Syntax
Plug 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'mileszs/ack.vim'

" Navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdtree-git-plugin'

call plug#end()



