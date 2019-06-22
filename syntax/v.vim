if exists('b:current_syntax')
  finish
endif

syn match vString /\'.*\'/

syn keyword vConditional if else switch
syn keyword vRepeat for
syn keyword vLabel case default
syn keyword vOperator + - * / % ^ ++ --
syn keyword vKeyword fn return mut in module const struct
syn match vComment /\/\/.*/

hi def link vString String

hi def link vConditional Conditional
hi def link vRepeat Repeat
hi def link vLabel Label
hi def link vOperator Operator
hi def link vKeyword Keyword
hi def link vComment Comment

let b:current_syntax = 'v'
