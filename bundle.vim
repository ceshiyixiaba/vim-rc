set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 主题
Plugin 'tomasr/molokai'
" 文件浏览器
Plugin 'scrooloose/nerdtree'
" Tagbar
Plugin 'majutsushi/tagbar'
" Ctrl+P 搜索
Plugin 'kien/ctrlp.vim'
" 状态栏
Plugin 'Lokaltog/vim-powerline'
" 状态栏，Git 信息
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required
