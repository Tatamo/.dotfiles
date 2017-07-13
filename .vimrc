set mouse=a
set ttymouse=xterm2

set tabstop=4
set autoindent
set noexpandtab
set shiftwidth=4

set t_Co=256
set background=dark

colorscheme hybrid
syntax on

" template
augroup temp
	autocmd!
	autocmd BufNewFile *.cpp 0r $HOME/.vim/template/cpp
augroup END

"全角スペースをハイライト表示
function! ZenkakuSpace()
	highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
	augroup ZenkakuSpace
		autocmd!
		autocmd ColorScheme       * call ZenkakuSpace()
		autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
	augroup END
	call ZenkakuSpace()
endif


" こっから下はよくわかってない

"typescript indenting
let g:typescript_indent_disable = 1

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
  
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

" http://mapyo.hatenablog.com/entries/2015/03/01
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'jason0x43/vim-js-indent'
au BufRead,BufNewFile,BufReadPre *.ts set filetype=typescript

NeoBundle 'thinca/vim-quickrun'

NeoBundleLazy 'sophacles/vim-processing'
augroup Processing
	autocmd!
	autocmd BufNewFile *.pde NeoBundleSource vim-processing
	autocmd BufRead    *.pde NeoBundleSource vim-processing
augroup END



call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------


