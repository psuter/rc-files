if exists("b:current_syntax")
    finish
endif

syntax clear
syntax case match

syntax spell notoplevel

syntax match TPTPOperator "="
syntax match TPTPOperator "=>"
syntax match TPTPOperator "<="
syntax match TPTPOperator "\<=\>"
syntax match TPTPOperator "\<\~\>"
syntax match TPTPOperator "&"
syntax match TPTPOperator "|"
syntax match TPTPOperator "@"
syntax match TPTPOperator "\~"
syntax match TPTPOperator "\~|"
syntax match TPTPOperator "\~&"
syntax match TPTPOperator "*"
syntax match TPTPOperator "+"
syntax match TPTPOperator "!"
syntax match TPTPOperator "?"
syntax match TPTPOperator "!!"
syntax match TPTPOperator "??"
syntax match TPTPOperator "!="
syntax match TPTPPunctuation "("
syntax match TPTPPunctuation ")"
syntax match TPTPPunctuation ","
syntax match TPTPPunctuation "\."
syntax match TPTPPunctuation "\["
syntax match TPTPPunctuation "\]"
syntax match TPTPPunctuation ":"
syntax match TPTPType "$i"
syntax match TPTPType "$o"
syntax match TPTPType ">"


syntax region TPTPPercentComment start=/%/ end=/$/ contains=@Spell
syntax region TPTPSlashStarComment start="/\*" end="\*/" contains=@Spell

syntax keyword TPTPTopLevel include thf tff fof cnf
syntax keyword TPTPFormulaRole assumption axiom conjecture definition hypothesis lemma negated_conjecture plain theorem type unknown

" simpler that real description...
syntax region TPTPDoubleQuoted start="\"" end="\""
syntax region TPTPSingleQuoted start="'" end="'"

highlight link TPTPTopLevel Keyword
highlight link TPTPFormulaRole Keyword
highlight link TPTPPercentComment Comment
highlight link TPTPSlashStarComment Comment
highlight link TPTPDoubleQuoted String
highlight link TPTPSingleQuoted String
highlight link TPTPOperator Special
highlight link TPTPPunctuation Special
highlight link TPTPType Type
