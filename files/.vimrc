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

filetype indent on

augroup filetype
    au! BufRead,BufNewFile *.ll   set filetype=llvm
augroup END

augroup filetype
    au! BufRead,BufNewFile *.td   set filetype=tablegen
augroup END

fun BenIndent()
    let oldLine=line('.')
    normal(gg=G)
    execute ':' . oldLine
endfun
map -- :call BenIndent()<cr> 
" /Indentation stuff

" map control-backspace to delete the previous word (only works with gvim)
" :imap <C-BS> <C-W>

" may make some extra add-ons work.
" set runtimepath+=/usr/share/vim/addons

" that loads the appropriate plugin for LaTeX, for instance
filetype plugin on
