"--------------------
" 基本的な設定
"--------------------
"新しい行のインデントを現在行と同じにする
set autoindent

"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/vimbackup

"クリップボードをWindowsと連携する
set clipboard=unnamed

"vi互換をオフする
set nocompatible

"スワップファイル用のディレクトリを指定する
set directory=$HOME/vimbackup

"タブの代わりに空白文字を指定する
set expandtab

"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden

"インクリメンタルサーチを行う
set incsearch

"行番号を表示する
set number

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

"新しい行を作った時に高度な自動インデントを行う
set smarttab

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

set tabstop=4
set expandtab
set shiftwidth=4

if has('vim_starting')
    "初回起動時のみ runtimepath に neobundleのパスを指定する
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
    " NeoBundleを初期化
    call neobundle#begin()

"インストールするプラグインをここに記述
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'clausreinke/typescript-tools'
NeoBundle 'mattn/emmet-vim'

call neobundle#end()

"ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on


set clipboard+=unnamed



