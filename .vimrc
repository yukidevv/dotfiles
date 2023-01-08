"syntax on
syntax enable

"vimの設定などなど
"行番号の表示
set number

"Tabを半角スペースに変換
set expandtab

"行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2

"行頭でのTab文字の表示幅
set shiftwidth=2

"画面右端に行列番号
set ruler

"autoindentを有効にする
set autoindent 
set smartindent
set nocompatible

"ターミナル設定
set splitbelow
set termwinsize=7x0

set belloff=all

"visualモードのハイライトカラーを変更
highlight Visual ctermbg=102

"文字列検索時のハイライトカラーを設定
set hlsearch

"colorscheme
colorscheme habamax

"color of comment
highlight Comment ctermfg=green
