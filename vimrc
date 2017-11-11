if filereadable(expand("~/.vim/bundle.vim"))
  source ~/.vim/bundle.vim
endif

set nobackup
set nowritebackup
set noswapfile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主窗口

" Color scheme
colorscheme molokai

" Highlight current line
set t_Co=256
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Make it obvious where 80 characters is
set textwidth=80
"set colorcolumn=+1

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=2       " tab width
set softtabstop=2   " backspace
set shiftwidth=2    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Numbers
set number
nnoremap <F2> :set nonumber!<CR>:set paste!<CR>:set foldcolumn=0<CR>
"set numberwidth=5

set matchpairs+=<:>
set hlsearch
"set incsearch
set ignorecase

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 上窗口
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 左窗口

" NERD Tree

"  change default arrows
let NERDTreeDirArrowExpandable = '▸'
let NERDTreeDirArrowCollapsible = '▾'

let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.o$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"

" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" map a specific key
nmap <F3> :NERDTreeToggle <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 右窗口

" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_iconchars = ['▸', '▾']
nmap <F4> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 下窗口

" ctrap Ctrl+P 搜索
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" ctrap-ag; sudo apt-get install silversearcher-ag
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Always display the status line
set laststatus=2
" Git Hotness
set statusline+=%{fugitive#statusline()}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hexo *.styl
au BufRead,BufNewFile *.styl set syntax=sass
