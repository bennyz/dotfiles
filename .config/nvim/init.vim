colorscheme desert
autocmd Filetype gitcommit spell textwidth=72

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/benny/.nvim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/benny/.nvim')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('scrooloose/nerdtree')
call dein#add('junegunn/fzf')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" nirs config
set encoding=utf-8
set cindent
set nocompatible
set backspace=indent,eol,start
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=tab:»\
set number
set spelllang=en
setlocal spell spelllang=en_us
set spellfile=~/.config/nvim/spell/en.utf-8.add

" Status line
set laststatus=2
set statusline=%<%f\ %y%m%r%=%-14.(%l,%c%V%)\ %P

" Highlight trailing whitespace

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

