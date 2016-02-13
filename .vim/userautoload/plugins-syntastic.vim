set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive',
			\ 'active_filetypes': ['ruby', 'python'],
			\ 'passivi_filetypes': [] }

let g:syntastic_ruby_checkers = ['rubocop']

let g:syntastic_python_checkers = ["flake8"]

