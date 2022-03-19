" pipe rg result into quickfix
set grepprg=ag\ --vimgrep

function! Rg(...)
	return system(join([&grepprg] + [expandcmd(join(a:000, ' '))], ' -i '))
endfunction

command! -nargs=+ -complete=file_in_path -bar Rg  cgetexpr Rg(<f-args>)

cnoreabbrev <expr> grep  (getcmdtype() ==# ':' && getcmdline() ==# 'grep')  ? 'Grep'  : 'grep'

augroup quickfix
	autocmd!
	autocmd QuickFixCmdPost cgetexpr cwindow
augroup END


