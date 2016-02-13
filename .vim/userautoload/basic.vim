let python_major_version = system("python -c 'import sys; print(sys.version_info[0])'")
if python_major_version == 2 && has('python')
	python None
elseif python_major_version == 3 && has('python3')
	python3 None
endif

set encoding=utf-8
set fileformats=unix,dos,mac
syntax enable
set clipboard+=unnamed
set undodir=~/.vim/undo
set number
set ruler
set smartindent
set nobackup
set incsearch
set noexpandtab
colorscheme desert256
let g:pymode_indent = 0

if has('unix')
"swapfile置き場
	set directory=~/tmp
endif

nnoremap <Space>.
\	:<C-u>edit $MYVIMRC<CR>

if has('unix')
"LinuxでEsc押下時にimeoffさせる
"##### auto fcitx  ###########
	function! Fcitx2en()
		let s:input_status = system("fcitx-remote")
 		if s:input_status == 2
    			let l:a = system("fcitx-remote -c")
 		endif
	endfunction
	set ttimeoutlen=150
"退出插入模式
	autocmd InsertLeave * call Fcitx2en()
"##### auto fcitx end ######
endif

if exists("did_load_filetypes")
	finish
endif

augroup filetypedetect
	au BufNewFile,BufRead *.c   setlocal tabstop=4 shiftwidth=4
	au BufNewFile,BufRead *.cpp setlocal tabstop=4 shiftwidth=4
	au BufNewFile,BufRead *.h   setlocal tabstop=4 shiftwidth=4
augroup END
endif
