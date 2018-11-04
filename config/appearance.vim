" ALE
let g:go_fmt_command = "goimports"
"let g:ale_fix_on_save = 1

let g:SuperTabDefaultCompletionType = "context"

" Deoplete
let g:deoplete#enable_at_startup = 1

let g:go_auto_type_info = 1

" Other settings
set expandtab
set hidden
set list
set number
set relativenumber
set shiftwidth=4
set tabstop=4
set updatetime=400

let g:lightline = {
            \ 'colorscheme': 'material_vim',
            \ 'active': {
            \     'left': [
            \         [ 'mode', 'paste' ],
            \         [ 'gitbranch', 'readonly', 'filename', 'modified' ]
            \     ]
            \ },
            \ 'component_function': {
            \         'gitbranch': 'fugitive#head'
            \     },
            \ }

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

let g:material_terminal_italics = 1
set background=dark
colorscheme material

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif

