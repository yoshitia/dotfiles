"---------------------------
"Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
  
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
   
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
NeoBundle 'Shougo/vimproc.vim', {
	\ 'build' : {
		\     'windows' : 'tools\\update-dll-mingw',
		\     'cygwin' : 'make -f make_cygwin.mak',
		\     'mac' : 'make',
		\     'linux' : 'make',
		\     'unix' : 'gmake',
		\    },
		\ }

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'marcus/rsense'
NeoBundle 'supermomonga/neocomplete-rsense.vim'

NeoBundle 'scrooloose/syntastic'

NeoBundle 'thinca/vim-ref'
NeoBundle 'yuku-t/vim-ref-ri'

NeoBundle 'thinca/vim-quickrun'

NeoBundle 'justmao945/vim-clang'

NeoBundle 'tpope/vim-surround'

NeoBundle 'szw/vim-tags'

NeoBundle 'tpope/vim-endwise'

NeoBundle 'osyo-manga/vim-anzu'

NeoBundle 'jmcantrell/vim-virtualenv'

NeoBundle 'hynek/vim-python-pep8-indent'

NeoBundle 'kamichidu/vim-unite-javaimport', {
			\ 'depends' : [
			\ 'Shougo/unite.vim',
			\ 'Shougo/vimproc.vim',
			\ 'kamichidu/vim-javaclasspath',
			\ 'yuratomo/w3m.vim',
			\ ],
			\}

NeoBundle 'Shougo/javacomplete'

NeoBundle 'haya14busa/vim-migemo'

NeoBundle 'mattn/emmet-vim'

call neobundle#end()
     
" Required:
filetype plugin indent on
      
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
       
"-------------------------
" End Neobundle Settings.
"-------------------------
