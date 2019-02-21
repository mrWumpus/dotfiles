noremap <buffer> <silent> <leader>ff :%!prettier %<CR>

let b:ale_fixers=['prettier', 'eslint']
let b:ale_linters=['eslint']
