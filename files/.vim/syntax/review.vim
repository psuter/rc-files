if exists("b:current_syntax")
    finish
endif

syntax clear
syntax case match

syntax region EasyChairComment     start=/^---/ end=/$/ contains=@NoSpell
syntax region EasyChairSectionHead start=/^\*\*\*/ end=/$/ contains=@NoSpell

highlight link EasyChairComment     Comment 
highlight link EasyChairSectionHead PreProc 

