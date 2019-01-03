"Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
    set nocompatible               " Be iMproved
endif

"Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

"1
NeoBundle 'Yggdroot/indentLine'

"2
" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'

"3 加速させられたjk
NeoBundle 'rhysd/accelerated-jk'

"4 perl補完プラグイン
NeoBundle 'https://github.com/c9s/perlomni.vim'

"5 molokaischeme
NeoBundle 'tomasr/molokai'

"6 gitgutter
NeoBundle 'airblade/vim-gitgutter'

"7 vim-fugitive
NeoBundle 'tpope/vim-fugitive'

call neobundle#end()

NeoBundleCheck

"Required:
filetype plugin indent on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

"vimの設定などなど
"行番号の表示
set number

"Tabを半角スペースに変換
set expandtab

"行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4

"行頭でのTab文字の表示幅
set shiftwidth=4

"対応する括弧をハイライト
set showmatch

"コードの色分け
colorscheme molokai

"autoindentを有効にする
set autoindent 
set nocompatible

"インデントの可視化するプラグイン
set list listchars=tab:\¦\

"j,kを押下した時の速度を早くするプラグイン
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

setlocal omnifunc=syntaxcomplete#Complete

nnoremap <silent><C-e> :NERDTreeToggle<CR>

"vim-gitgutter用　変更箇所ハイライト
let g:gitgutter_highlight_lines = 1
