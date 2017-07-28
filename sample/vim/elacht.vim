" Vim syntax: elacht
" Version: 0.0.0
" Copyright (C) 2017 El Pin Al
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}

if exists('b:current_syntax')
  finish
endif




syntax keyword eltDirective package import
syntax keyword eltType number
syntax keyword eltConditional if then else case of

syntax match eltSymbol /[^A-Za-z0-9 \t()]\+/
syntax match eltDecimal /\<\d\+\>/
syntax match eltDeclaration /=/
syntax match eltTypeAnnotation /::/
syntax match eltArrow /->/
syntax match eltComment /;.*/

syntax region eltString start=+"+ skip=+\\"+ end=+"+




highlight default link eltDirective Statement
highlight default link eltType Type
highlight default link eltComment Comment
highlight default link eltDecimal Number
highlight default link eltDeclaration Keyword
highlight default link eltTypeAnnotation Keyword
highlight default link eltArrow Keyword
highlight default link eltSymbol Operator
highlight default link eltString String
highlight default link eltConditional Conditional




let b:current_syntax = 'elacht'

" __END__
" vim: foldmethod=marker
