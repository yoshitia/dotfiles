nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

set statusline=%{anzu#search_status()}
