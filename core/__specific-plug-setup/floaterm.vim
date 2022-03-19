let g:floaterm_keymap_new    = '<Tab>t'
let g:floaterm_keymap_prev   = '<Tab>p'
let g:floaterm_keymap_next   = '<Tab>n'
let g:floaterm_keymap_toggle = '<Tab>j'
let g:floaterm_keymap_kill = '<Tab>x'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
let g:floaterm_autoclose = 2

command! Lazygit FloatermNew lazygit
command! Lazydocker FloatermNew lazydocker
command! Gtop FloatermNew gtop

" TODO: use for sometime to see if Gtop are necessary
noremap <Tab>lg :Lazygit<CR>
noremap <Tab>ld :Lazydocker<CR>
noremap <Tab>gt :Gtop<CR>
