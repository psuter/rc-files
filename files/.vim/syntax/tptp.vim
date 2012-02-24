if exists("b:current_syntax")
    finish
endif

syntax clear
syntax case match

syntax region TPTPComment start=/%/ end=/$/ contains=@Spell

syntax keyword TPTPTopLevel include thf tff fof cnf
syntax keyword TPTPFormulaRole assumption axiom conjecture definition hypothesis lemma negated_conjecture plain theorem type unknown


highlight link TPTPTopLevel Type
highlight link TPTPFormulaRole Keyword
highlight link TPTPComment Comment
