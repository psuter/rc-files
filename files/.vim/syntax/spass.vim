" Vim syntax file
" Language:         SPASS
" Maintainer:       Etienne Kneuss <etienne.kneuss@epfl.ch>
" Last Change:      27.10.2010

" Quit when a syntax file was already loaded	{{{
if exists("b:current_syntax")
	finish
endif
"}}}
syn region spassProblem matchgroup=spassSection start=/begin_problem(.\+)./ end=/end_problem\./ contains=spassDesc,spassFormulas,spassSymbols
syn region spassDesc matchgroup=spassSection start=/list_of_descriptions\./ end=/end_of_list\./ contained

syn region spassSymbols matchgroup=spassSection start=/list_of_symbols\./ end=/end_of_list\./
syn region spassFormulas matchgroup=spassSection start=/list_of_formulae(.\+)/ end=/end_of_list\./ contains=spassKeyWord,spassVar,spassComment
syn keyword spassKeyWord formula forall exists and or implies not true false implied equiv equal contained
syn region spassVar matchgroup=spassDelim start=/\[/ end=/\]/ contained
syn match  spassComment "%.\+$" contained


hi link spassKeyWord      Statement
hi link spassDesc         Comment
hi link spassSection      Structure
hi link spassError        Error
hi link spassVar          Constant
hi link spassDelim        Delimiter
hi link spassComment      Comment

let b:current_syntax="spass"
