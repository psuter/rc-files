if exists("b:current_syntax")
    finish
endif

syntax clear
syntax case match

syntax region EasyChairComment     start=/---/ end=/\n/ 
syntax region EasyChairSectionHead start=/\*\*\*/ end=/\n/

highlight link EasyChairComment     Comment
highlight link EasyChairSectionHead PreProc

