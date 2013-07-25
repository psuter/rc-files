syntax on

:set ignorecase
:set smartcase

" copied from .vim/syntax/scala.vim
" you might like to put these lines in your .vimrc
" customize colors a little bit (should be a different file)
hi scalaNew gui=underline
hi scalaMethodCall gui=italic
hi scalaValName gui=underline
hi scalaVarName gui=underline

" Indentation stuff
set et
set sw=4
set smarttab

" that loads the appropriate plugin for LaTeX, for instance
filetype plugin on

" feeling brave.
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <End> <nop>
noremap <Home> <nop>

" completion is Bash-like
set wildmode=longest,list

" Coq stuff
let CoqIDE_coqtop = "/home/psuter/bin/coqtop"
let g:CoqIDEDefaultMap = 1

