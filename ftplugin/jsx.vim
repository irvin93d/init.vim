""" Formatting
" On save
autocmd! BufWritePost <buffer> :call JsxBeautify()
" On <Leader>ef
noremap <buffer> <silent> <Leader>ef :call JsxBeautify()<cr>
