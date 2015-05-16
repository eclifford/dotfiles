inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" let g:user_emmet_expandabbr_key = '<Tab>'
" let g:user_emmet_complete_tag = 1
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
