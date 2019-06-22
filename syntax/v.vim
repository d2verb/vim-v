if exists('b:current_syntax')
  finish
endif

" Comment {{{
syn match vComment /\/\/.*/ contains=vTodo

hi def link vComment Comment
" }}}

" Constant {{{
syn match vString /\'.*\'/
syn match vCharacter /`.`/
syn match vNumber /[0-9]\+/
syn keyword vBoolean true false

hi def link vString String
hi def link vCharacter Character
hi def link vNumber Number
hi def link vBoolean Boolean
" }}}

" Statement {{{
syn keyword vConditional if else switch
syn keyword vRepeat for
syn keyword vLabel case default
syn keyword vOperator + - * / %
syn keyword vKeyword fn return pub mut in module const import

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
syn keyword vTodo TODO FIXME XXX

hi def link vTodo Todo
" }}}

let b:current_syntax = 'v'

