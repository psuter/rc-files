if exists("b:current_syntax")
    finish
endif

syntax clear
syntax case match

setlocal iskeyword+=#
setlocal iskeyword+=-
setlocal iskeyword+=+

syntax match rockChord /\<[A-G]\(b\|#\)\=\(m\|-\|dim\|+\|aug\|7\|m7\|Maj7\|m7b5\)\=\(\/[A-G]\(b\|#\)\=\)\=\>/ contained
syntax match rockDuration /[1-9][0-9]*\(hold\|mute\)\=/ contained

syntax region rockAnnotRegion start=/{/ end=/}/ contains=rockChord,rockDuration

highlight link rockChord          Type
highlight link rockDuration       Constant
highlight link rockAnnotRegion    Delimiter

