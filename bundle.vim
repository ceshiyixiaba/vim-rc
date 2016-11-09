set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 主题
Plugin 'tomasr/molokai'
" 文件浏览器
Plugin 'scrooloose/nerdtree'
" 标签页
Plugin 'humiaozuzu/TabBar'
" tabbar
Plugin 'majutsushi/tagbar'
" Ctrl+P 搜索
Plugin 'kien/ctrlp.vim'
" 状态栏
Plugin 'Lokaltog/vim-powerline'
" 状态栏，Git 信息
Plugin 'tpope/vim-fugitive'

" mkdir
Plugin 'pbrisbin/vim-mkdir'
" 快速注释、反注释代码
Plugin 'vim-scripts/tComment'
" 快速的删除、修改和添加括号、引号、XML标签等等
Plugin 'tpope/vim-surround'

" Rails
Plugin 'tpope/vim-rails'
" 自动补全 end
Plugin 'tpope/vim-endwise'
" MiniTest
Plugin 'sunaku/vim-ruby-minitest'
" HTML emmet
Plugin 'mattn/emmet-vim'
" HTML5
Plugin 'othree/html5.vim'
" Typescript
Plugin 'leafgarland/typescript-vim'
" AngularJS
Plugin 'burnettk/vim-angular'
" Go
Plugin 'fatih/vim-go'
" Nginx
Plugin 'vim-scripts/nginx.vim'
" HAML
Plugin 'tpope/vim-haml'
" CoffeeScript
Plugin 'kchmck/vim-coffee-script'
" Docker
Plugin 'ekalinin/Dockerfile.vim'
" gradle
Plugin 'vim-scripts/vim-gradle'

call vundle#end()            " required
filetype plugin indent on    " required
