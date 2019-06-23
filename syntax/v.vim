if exists('b:current_syntax')
  finish
endif

" Constant {{{
syn match vString /'.*'/
syn match vCharacter /`.`/ " FIXME: escaped char like `\n` wouldn't work so far
syn match vNumber /[[:digit:]]\+/
syn keyword vBoolean true false

hi def link vString String
hi def link vCharacter Character
hi def link vNumber Number
hi def link vBoolean Boolean
" }}}

" Identifier {{{
syn match vIdentifier /[[:alpha:]_]\w*/
syn match vFunction /[[:alpha:]_]\w*/

hi def link vIdentifier NONE
hi def link vFunction None
" }}}

" Statement {{{
syn keyword vConditional if else switch match assert
syn keyword vRepeat for
syn keyword vLabel case default
syn match vOperator '+\|-\|*\|/\|%'
syn match vOperator '&\||\|^'
syn match vOperator '<<\|>>'
syn match vOperator '==\|!=\|<\|<==\|>\|>='
syn match vOperator '+=\|-=\|*=\|/=\|%=\|&=\||=\|^=\|>>=\|<<='
syn match vOperator '&&\|||'
syn keyword vKeyword break const continue defer go goto import in interface
syn keyword vKeyword fn nextgroup=vFunction skipwhite skipempty
syn keyword vKeyword module mut or pub return type

hi def link vConditional Conditional
hi def link vRepeat Repeat
hi def link vLabel Label
hi def link vOperator Operator
hi def link vKeyword Keyword
" }}}

" Type {{{
syn keyword vType bool string byte int rune
syn keyword vType i8 i16 i32 i64 i128
syn keyword vType u8 u16 u32 u64 u128
syn keyword vType f32 f64
syn keyword vType byteptr voidptr
syn keyword vStructure struct enum

hi def link vType Type
hi def link vStructure Structure
" }}}

" Todo {{{
syn keyword vTodo TODO FIXME XXX contained

hi def link vTodo Todo
" }}}

" Comment {{{
syn match vComment /\/\/.*/ contains=vTodo

hi def link vComment Comment
" }}}

let b:current_syntax = 'v'

