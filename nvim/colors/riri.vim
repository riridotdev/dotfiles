
set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='test_colors'

hi Normal guifg=#5D5D5D guibg=#000000 gui=NONE guisp=NONE
hi Comment guifg=#333333 guibg=NONE gui=NONE guisp=NONE
hi CursorLine guifg=NONE guibg=#0D0D0D gui=NONE guisp=NONE
hi MatchParen guifg=#8C8C8C guibg=NONE gui=NONE guisp=NONE
hi StatusLine guifg=#747474 guibg=#000000 gui=NONE guisp=NONE
hi StatusLineNC guifg=#747474 guibg=#000000 gui=NONE guisp=NONE
hi Visual guifg=NONE guibg=#1F1F1F gui=NONE guisp=NONE
hi WinSeparator guifg=#1F1F1F guibg=NONE gui=NONE guisp=NONE
hi Directory guifg=#8C8C8C guibg=NONE gui=NONE guisp=NONE
hi @string guifg=#5D5D5D guibg=NONE gui=NONE guisp=NONE
hi @string.escape guifg=#484848 guibg=NONE gui=NONE guisp=NONE
hi @character guifg=#5D5D5D guibg=NONE gui=NONE guisp=NONE
hi @punctuation guifg=#484848 guibg=NONE gui=NONE guisp=NONE
hi @punctuation.special guifg=#484848 guibg=NONE gui=NONE guisp=NONE
hi @operator guifg=#5D5D5D guibg=NONE gui=NONE guisp=NONE
hi @variable guifg=#8C8C8C guibg=NONE gui=NONE guisp=NONE
hi @type guifg=#747474 guibg=NONE gui=NONE guisp=NONE
hi @type.builtin guifg=#747474 guibg=NONE gui=NONE guisp=NONE
hi @function guifg=#BEBEBE guibg=NONE gui=NONE guisp=NONE
hi @function.builtin guifg=#BEBEBE guibg=NONE gui=NONE guisp=NONE
hi @constructor guifg=#BEBEBE guibg=NONE gui=NONE guisp=NONE
hi @constant guifg=#8C8C8C guibg=NONE gui=NONE guisp=NONE
hi @constant.builtin guifg=#8C8C8C guibg=NONE gui=NONE guisp=NONE
hi @number guifg=#5D5D5D guibg=NONE gui=NONE guisp=NONE
hi @number.float guifg=#5D5D5D guibg=NONE gui=NONE guisp=NONE
hi @keyword guifg=#5D5D5D guibg=NONE gui=NONE guisp=NONE
hi @property guifg=#747474 guibg=NONE gui=NONE guisp=NONE
hi IndentBlankLineChar guifg=#161616 guibg=NONE gui=NONE guisp=NONE
hi IndentBlankLineContextChar guifg=#1F1F1F guibg=NONE gui=NONE guisp=NONE
hi IndentBlankLineContextSpaceChar guifg=#1F1F1F guibg=#0D0D0D gui=NONE guisp=NONE
hi IlluminatedWordRead guifg=NONE guibg=#161616 gui=NONE guisp=NONE
hi IlluminatedWordWrite guifg=NONE guibg=#161616 gui=NONE guisp=NONE
hi IlluminatedWordText guifg=NONE guibg=#161616 gui=NONE guisp=NONE
hi GitSignsAdd guifg=#6D996E guibg=NONE gui=NONE guisp=NONE
hi GitSignsAddStaged guifg=#133D17 guibg=NONE gui=NONE guisp=NONE
hi GitSignsChange guifg=#5D93B8 guibg=NONE gui=NONE guisp=NONE
hi GitSignsChangeStaged guifg=#X83757 guibg=NONE gui=NONE guisp=NONE
hi GitSignsDelete guifg=#B87878 guibg=NONE gui=NONE guisp=NONE
hi GitSignsDeleteStaged guifg=#541F21 guibg=NONE gui=NONE guisp=NONE
hi TelescopeMatching guifg=#8C8C8C guibg=NONE gui=NONE guisp=NONE
