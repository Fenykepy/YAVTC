" Maintainer:	Fenykepy
" Version:      1.0
" Last Change:	Februar 13 2016

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "yavtc"

""" Color palette
" name  hex x256 perfect_match   human_readable  used_for
"
" color01 #1c1c1C 234 1   darkestgrey     (background)
" color02 #444444 238 1   darkergrey      (matching brackets bg)
" color03 #303030 236 1   darkgrey        (cursor line and column)
" color04 #666666 242 1   lightgrey       (line numbers, comments)
" color05 #606060 241 1   grey            (cursor)
" color06 #cccccc 252 0   lightergrey     (selected line number,operators)
" color07 #dadada 253 0   lightestgrey    (normal text)
" color08 #ffffff 255 1   white           (todo)
" color09 #d70000 160 1   red             (matching brackets)
" color10 #ddca7e 179 0   paleyellow      (keywords, booleans)
" color11 #9a8297 139 0   palepurple      (property, functions names) 
" color12 #809bbd 110 0   paleblue        (variables names)
" color13 #a7925a 179 0   lightbrown      (xml tags)
" color14 #d0782a 172 0   paleorange      (numbers)
" color15 #96b38a 108 0   palegreen       (strings)

"" variables definition
let s:gui1   = '#1c1c1c'
let s:term1  = '234'

let s:gui2   = '#444444'
let s:term2  = '238'

let s:gui3   = '#303030'
let s:term3  = '236'

let s:gui4   = '#666666'
let s:term4  = '242'

let s:gui5   = '#606060'
let s:term5  = '241'

let s:gui6   = '#cccccc'
let s:term6  = '252'

let s:gui7   = '#dadada'
let s:term7  = '253'

let s:gui8   = '#ffffff'
let s:term8  = '255'

let s:gui9   = '#d70000'
let s:term9  = '160'

let s:gui10  = '#ddca7e'
let s:term10 = '179'

let s:gui11  = '#9a8297'
let s:term11 = '139'

let s:gui12  = '#809bbd'
let s:term12 = '110'

let s:gui13  = '#a7925a'
let s:term13 = '94'

let s:gui14  = '#d0782a'
let s:term14 = '172'

let s:gui15  = '#96b38a'
let s:term15 = '108'

let s:fg1 = 'guifg='.s:gui1.' ctermfg='.s:term1
let s:bg1 = 'guibg='.s:gui1.' ctermbg='.s:term1

let s:fg2 = 'guifg='.s:gui2.' ctermfg='.s:term2
let s:bg2 = 'guibg='.s:gui2.' ctermbg='.s:term2

let s:fg3 = 'guifg='.s:gui3.' ctermfg='.s:term3
let s:bg3 = 'guibg='.s:gui3.' ctermbg='.s:term3

let s:fg4 = 'guifg='.s:gui4.' ctermfg='.s:term4
let s:bg4 = 'guibg='.s:gui4.' ctermbg='.s:term4

let s:fg5 = 'guifg='.s:gui5.' ctermfg='.s:term5
let s:bg5 = 'guibg='.s:gui5.' ctermbg='.s:term5

let s:fg6 = 'guifg='.s:gui6.' ctermfg='.s:term6
let s:bg6 = 'guibg='.s:gui6.' ctermbg='.s:term6

let s:fg7 = 'guifg='.s:gui7.' ctermfg='.s:term7
let s:bg7 = 'guibg='.s:gui7.' ctermbg='.s:term7

let s:fg8 = 'guifg='.s:gui8.' ctermfg='.s:term8
let s:bg8 = 'guibg='.s:gui8.' ctermbg='.s:term8

let s:fg9 = 'guifg='.s:gui9.' ctermfg='.s:term9
let s:bg9 = 'guibg='.s:gui9.' ctermbg='.s:term9

let s:fg10 = 'guifg='.s:gui10.' ctermfg='.s:term10
let s:bg10 = 'guibg='.s:gui10.' ctermbg='.s:term10

let s:fg11 = 'guifg='.s:gui11.' ctermfg='.s:term11
let s:bg11 = 'guibg='.s:gui11.' ctermbg='.s:term11

let s:fg12 = 'guifg='.s:gui12.' ctermfg='.s:term12
let s:bg12 = 'guibg='.s:gui12.' ctermbg='.s:term12

let s:fg13 = 'guifg='.s:gui13.' ctermfg='.s:term13
let s:bg13 = 'guibg='.s:gui13.' ctermbg='.s:term13

let s:fg14 = 'guifg='.s:gui14.' ctermfg='.s:term14
let s:bg14 = 'guibg='.s:gui14.' ctermbg='.s:term14

let s:fg15 = 'guifg='.s:gui15.' ctermfg='.s:term15
let s:bg15 = 'guibg='.s:gui15.' ctermbg='.s:term15

let s:fgnone = 'guifg=NONE ctermfg=NONE'
let s:bgnone = 'guibg=NONE ctermbg=NONE'


" Vim >= 7.0 specific colors
if version >= 700
  " Cursor line and column
  exe 'hi CursorLine ' . s:bg3 . ' cterm=NONE'
  exe 'hi CursorColumn ' . s:bg3

  " Matching brackets
  exe 'hi MatchParen ' . s:fg9 .' '. s:bg2 . ' gui=none cterm=NONE'
    
  " Pmenu from Mustang theme (untouched)
  hi Pmenu 		guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel 	guifg=#000000 guibg=#afd700 ctermfg=0 ctermbg=148
endif



""" From Mustang theme (untouched)
hi NonText 		guifg=#808080 guibg=#303030 gui=none ctermfg=244 ctermbg=235
hi StatusLine 	guifg=#d3d3d5 guibg=#444444 gui=none ctermfg=253 ctermbg=238
hi StatusLineNC guifg=#939395 guibg=#444444 gui=none ctermfg=246 ctermbg=238
hi VertSplit 	guifg=#444444 guibg=#444444 gui=none ctermfg=238 ctermbg=238
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold ctermfg=254 cterm=bold
hi Visual		guifg=#e4e4e4 guibg=#3a3a3a gui=none ctermfg=254 ctermbg=237
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none ctermfg=244 ctermbg=236




"""""""" yavtc

"""" General colors
" Line numbers
exe 'hi LineNr ' . s:fg4 . ' ' . s:bg1 . ' gui=none cterm=NONE'

" Current line number
exe 'hi CursorLineNr ' . s:fg6 . ' ' . s:bg3 . ' gui=none cterm=NONE'

" Cursor
exe 'hi cursor ' . s:fgnone . ' ' . s:bg5 . ' gui=none cterm=NONE'

" Folded lines
exe 'hi Folded ' . s:fg7 . ' ' . s:bg4 . ' gui=none cterm=NONE'

" Todo - anything that needs extra attention. mostly keywords TODO FIXME and
" XXX
exe 'hi Todo ' . s:fg5 . ' ' . s:bg1 . ' gui=bold cterm=BOLD'

"""" Syntax highlighting
" Normal text
exe 'hi Normal ' . s:fg7 . ' ' . s:bg1 . ' gui=none cterm=NONE'

" Comments
exe 'hi Comment ' . s:fg4 . ' gui=none cterm=NONE'


" Constant - any constant
exe 'hi Constant ' . s:fg10 . ' gui=none cterm=NONE'

" Strings - string constant: "this is a string"
exe 'hi String ' . s:fg15 . ' gui=none cterm=NONE'

" Character - character constant: 'c', '\n'
exe 'hi Character ' . s:fg15 . ' gui=none cterm=NONE'

" Number - number constants: 234, 0xff
exe 'hi Number ' . s:fg14 . ' gui=none cterm=NONE'

" Float - floating point constants: 2.3e10
exe 'hi Float ' . s:fg14 . ' gui=none cterm=NONE'

" Booleans - booleans constants: true, True, TRUE
exe 'hi Boolean ' . s:fg14 . ' gui=none cterm=NONE'


" Identifier - any variable name
exe 'hi Identifier ' . s:fg10 . ' gui=none cterm=NONE'

" Function - function name (also: methods or classes)
exe 'hi Function ' . s:fg10 . ' gui=bold cterm=BOLD'


" Statement - any statement
exe 'hi Statement ' . s:fg10 . ' gui=none cterm=NONE'

" Conditional - if, then, else, endif, switch, etc.
exe 'hi Conditional ' . s:fg10 . ' gui=none cterm=NONE'

" Repeat - for, do, while, etc.
exe 'hi Repeat ' . s:fg10 . ' gui=none cterm=NONE'

" Label - case, default, etc.
exe 'hi Label ' . s:fg12 . ' gui=none cterm=NONE'

" Exception - try, catch, throw
exe 'hi Exception ' . s:fg10 . ' gui=none cterm=NONE'

" Keyword - any othe keyword
exe 'hi Keyword ' . s:fg10 . ' gui=none cterm=NONE'

" Operator - Sizeof, +, *, / etc.
exe 'hi Operator ' . s:fg6 . ' gui=none cterm=NONE'

" Brackets and braces {}()[]
syn match       Braces display '[{}()\[\]]'
exe 'hi Braces ' . s:fg6 . ' gui=none cterm=NONE'

" Special - any special symbol
" SpecialChar - special char in constant
" Tag - you can use CTRL-J on this
" Delimiter - character that needs attention
" SpecialComment special things inside a comment
" Debug - debugging statements
exe 'hi Special ' . s:fg14 . ' gui=none cterm=NONE'

" Error - any erroneous construct
exe 'hi Error ' . s:fg9 .' '. s:bgnone . ' gui=none'

" PreProc - generic Preprocessor
" Include - preprocessor #include
" Define - preprocessor #define
" Macro - same as define
" PreCondit - preprocessor #if, #else, #endif, etc.
exe 'hi PreProc ' . s:fg13 . ' gui=none cterm=NONE'

" Type - int, long, char, etc.
" StorageClass - static, register, volatile, etc.
" Structure - struct, union, enum, etc.
" Typedf - A typedef
exe 'hi Type ' . s:fg10 . ' gui=none cterm=NONE'






" Code-specific colors
hi pythonOperator guifg=#cccccc gui=none ctermfg=252

hi Search     guifg=white	guibg=NONE	cterm=NONE	gui=underline

""" vim-javascript
" Xml end tag
exe 'hi xmlEndTag ' . s:fg13 . ' gui=none cterm=NONE'

" xmlTagName
exe 'hi xmlTagName ' . s:fg13 . ' gui=none cterm=NONE'

" xmlTag
exe 'hi xmlTag ' . s:fg13 . ' gui=none cterm=NONE'



" jsNull statement
exe 'hi jsNull ' . s:fg14 . ' gui=none cterm=NONE'

" jsUndefined statement
exe 'hi jsUndefined ' . s:fg14 . ' gui=none cterm=NONE'


" jsArrowFunction
exe 'hi jsArrowFunction ' . s:fg6 . ' gui=none cterm=NONE'

" jsDotNotation
exe 'hi jsDotNotation ' . s:fg6 . ' gui=none cterm=NONE'

" jsObjectKey
exe 'hi jsObjectKey ' . s:fg11 . ' gui=none cterm=NONE'

" jsExportContainer
exe 'hi jsExportContainer ' . s:fg12 . ' gui=none cterm=NONE'

" jsFuncCall
exe 'hi jsFuncCall ' . s:fg10 . ' gui=none cterm=NONE'

" jsImportContainer
exe 'hi jsImportContainer ' . s:fg12 . ' gui=none cterm=NONE'

" jsTemplateVar
exe 'hi jsTemplateVar ' . s:fg12 . ' gui=none cterm=NONE'


""" vim-css3
" cssProp - css properties: display, content, text-align, etc.
exe 'hi cssProp ' . s:fg11 . ' gui=none cterm=NONE'
" cssMarginAttr - css margin keyword
exe 'hi cssMarginAttr ' . s:fg11 . ' gui=none cterm=NONE'
" cssPaddingAttr - css padding keyword
exe 'hi cssPaddingAttr ' . s:fg11 . ' gui=none cterm=NONE'
" cssBorderAttr
exe 'hi cssBorderAttr ' . s:fg11 . ' gui=none cterm=NONE'

" cssClassName - css class names: .my_class_name
exe 'hi cssClassName ' . s:fg10 . ' gui=none cterm=NONE'

" cssClassNameDot - css class names dot: "."my_class_name
exe 'hi cssClassNameDot ' . s:fg14 . ' gui=none cterm=NONE'

" cssBraces
exe 'hi cssBraces ' . s:fg6 . ' gui=none cterm=NONE'



" cssIdentifier - css id: #mon_id
exe 'hi cssIdentifier ' . s:fg10 . ' gui=none cterm=NONE'

" cssPseudoClassId
exe 'hi cssPseudoClassId ' . s:fg13 . ' gui=none cterm=NONE'





""" vim-less
" lessVariable
exe 'hi lessVariable ' . s:fg12 . ' gui=none cterm=NONE'

" lessClass
exe 'hi lessClass ' . s:fg10 . ' gui=none cterm=NONE'

" lessNestedSelector
exe 'hi lessNestedSelector ' . s:fg10 . ' gui=none cterm=NONE'
