noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

" let g:comfortable_motion_friction = 80.0
" let g:comfortable_motion_air_drag = 2.0

let g:comfortable_motion_friction = 200.0
let g:comfortable_motion_air_drag = 0.0

