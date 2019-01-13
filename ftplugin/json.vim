""" Formatting
" On save
autocmd! BufWritePost <buffer> :call JsonBeautify()
" On <Leader>ef
noremap <buffer> <silent> <Leader>ef :call JsonBeautify()<cr>
