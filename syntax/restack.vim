if exists("b:current_syntax")
  finish
endif

syntax keyword restackKeyword to
syntax keyword restackKeyword import from
highlight link restackKeyword Keyword

syntax keyword restackConditional if when
highlight link restackConditional Conditional

syntax keyword restackDebug print show
highlight link restackDebug Debug

syntax keyword restackFunction dup trip
syntax keyword restackFunction reverse swap cycle
syntax keyword restackFunction split join
syntax keyword restackFunction range
syntax keyword restackFunction map flat-map fold filter
syntax keyword restackFunction drop
highlight link restackFunction Function

syntax match restackBlock "\v\("
syntax match restackBlock "\v\)"
highlight link restackBlock Operator

syntax match restackComment "\v--.*$"
highlight link restackComment Comment

syntax region restackBlockComment start=/\v---/ skip=/\v\\./ end=/\v---/
highlight link restackBlockComment Comment

syntax match restackMacro "\v\@[^ \n]+"
highlight link restackMacro Macro

syntax match restackNumber "\v-?\d*(\.\d+)?"
highlight link restackNumber Number

syntax region restackString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link restackString String

let b:current_syntax = "restack"

