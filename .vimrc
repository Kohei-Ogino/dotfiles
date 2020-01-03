set encoding=utf-8
scriptencoding utf-8
" ↑1行目は読み込み時の文字コードの設定
" ↑2行目はVim Script内でマルチバイトを使う場合の設定
" Vim scritptにvimrcも含まれるので、日本語でコメントを書く場合は先頭にこの設定が必要になる



"----------------------------------------------------------
"dein.vim 
"----------------------------------------------------------
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('Shougo/deoplete.nvim') " 補完
  if !has('nvim')

    "--------------------------------------------------------
    " ここからプラグイン
    "--------------------------------------------------------
    
    " カラーテーマ
    call dein#add('tomasr/molokai')
    call dein#add('sff1019/vim-joker')
    call dein#add('joshdick/onedark.vim')
    call dein#add('itchyny/lightline.vim')


    call dein#add('itchyny/calendar.vim') " カレンダー
    " call dein#add('davidhalter/jedi-vim') " 補完
    call dein#add('scrooloose/nerdtree') " NERDTree
    call dein#add('vim-python/python-syntax') " pythonシンタックス
    call dein#add('roxma/nvim-yarp') " 補完
    call dein#add('roxma/vim-hug-neovim-rpc') " 補完
    call dein#add('vim-syntastic/syntastic') " シンタックス
    call dein#add('kazukazuinaina/Tweet.vim') " Twitter
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable


"----------------------------------------------------------
" 文字
"----------------------------------------------------------
set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
set ambiwidth=double " □や○文字が崩れる問題を解決



"----------------------------------------------------------
" ステータスライン
"----------------------------------------------------------
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの位置を表示する
set statusline=%F 

" 構文エラーを表示
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*



"----------------------------------------------------------
" コマンドモード
"----------------------------------------------------------
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数


"----------------------------------------------------------
" タブ・インデント
"----------------------------------------------------------
set expandtab " タブ入力を複数の空白入力に置き換える
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に名の行の構文をチェックし次の行のインデントを増減する
set tabstop=2 " 画面上でタブが占める幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースでカーソルキーが動く幅
set shiftwidth=2 " shiftwidth smartindentで増減する幅
augroup fileTypeIndent " PythonとCでインデントを分ける 
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.c setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.cpp setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END




"----------------------------------------------------------
" 文字列検索
"----------------------------------------------------------
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト

" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR> 


"----------------------------------------------------------
" カーソル
"----------------------------------------------------------
set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行末から次の行の行頭への移動が可能になる
inoremap <silent> jj <ESC>
set cursorline " カーソルラインをハイライト
set number " 行番号を表示


"----------------------------------------------------------
"補完 (deoplete)
"----------------------------------------------------------
" 補完をオン
let g:deoplete#enable_at_startup = 1
" 常に最初の候補を選択状態にする
set completeopt+=noinsert
" 自動的に対応するカッコを入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

"----------------------------------------------------------
" Syntastic
"----------------------------------------------------------
"pythonシンタックス
let g:python_highlight_all = 1
let g:syntastic_python_checkers = ['flake8'] 
"シンタックスオン
syntax on
" 構文エラー行に「>>」を表示
let g:syntastic_enable_signs = 1
" 他のVimプラグインと競合するのを防ぐ
let g:syntastic_always_populate_loc_list = 1
" 構文エラーリストを非表示
let g:syntastic_auto_loc_list = 0
" ファイルを開いた時に構文エラーチェックを実行する
let g:syntastic_check_on_open = 1
" 「:wq」で終了する時も構文エラーチェックする
let g:syntastic_check_on_wq = 1
" vintでvimrcのチェック
let g:syntastic_vim_checkers = ['vint']


"---------------------------------------------------------
"カラーテーマ
"---------------------------------------------------------

" ステータスバーの色
let g:lightline = { 
 \ 'colorscheme': 'onedark',
 \  }

" カラーテーマ
colorscheme onedark



"---------------------------------------------------------
" その他
"---------------------------------------------------------
set title " タイトルを表示
set noswapfile " スワップファイルを作らない

" クリップボードからペースト時に右にインデントがずれるのを防ぐ
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
  endif

" マウスを有効化
if has('mouse')
  set mouse=a
endif

" NERDTreeをvim起動時に表示
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ~/.vim/のテンプレを新規ファイル作成時に作成
autocmd BufNewFile *.c 0r ~/.vim/template/template.c
autocmd BufNewFile *.cpp 0r ~/.vim/template/template.cpp

