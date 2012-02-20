if exists("b:current_syntax")
    finish
endif

syntax clear
syntax case match

syntax region EasyChairComment     start=/---/ end=/\n/ contains=@NoSpell
syntax region EasyChairSectionHead start=/\*\*\*/ end=/\n/ contains=@NoSpell

highlight link EasyChairComment     Comment 
highlight link EasyChairSectionHead PreProc 

