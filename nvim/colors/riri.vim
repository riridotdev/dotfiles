" Maintainer: Ryan Lodge <rlodge1993@gmail.com>

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='riri'

hi @field guifg=#ADA5CC guibg=NONE gui=NONE guisp=NONE
hi @type.builtin.odin guifg=#B2C9D1 guibg=NONE gui=NONE guisp=NONE
hi IndentBlanklineChar guifg=#363636 guibg=NONE gui=NONE guisp=NONE
hi TelescopeMatching guifg=#e3f0e3 guibg=NONE gui=bold guisp=NONE
hi GitSignsAdd guifg=#96ba92 guibg=#252525 gui=NONE guisp=NONE
hi NormalFloat guifg=NONE guibg=#252525 gui=NONE guisp=NONE
hi CursorLine guifg=NONE guibg=#2a2a2a gui=NONE guisp=NONE
hi @type.builtin.go guifg=#B2C9D1 guibg=NONE gui=NONE guisp=NONE
hi IndentBlanklineContextChar guifg=#7d7d7d guibg=NONE gui=NONE guisp=NONE
hi Folded guifg=#7d7d7d guibg=#252525 gui=NONE guisp=NONE
hi @function.builtin guifg=#edbb6d gui=NONE guisp=NONE
hi @keyword.import guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi DiffDelete guifg=NONE guibg=#3E0202 gui=NONE guisp=NONE
hi DiffText guifg=NONE guibg=#223035 gui=NONE guisp=NONE
hi @text.uri guifg=#96ba92 guibg=NONE gui=NONE guisp=NONE
hi DiagnosticHint guifg=#96d7ef guibg=NONE gui=italic guisp=NONE
hi GitSignsStagedDeleteNr guifg=#252525 guibg=#d8726e gui=NONE guisp=NONE
hi LineNr guifg=#464646 guibg=NONE gui=NONE guisp=NONE
hi Search guifg=NONE guibg=NONE gui=NONE guisp=NONE
hi @constructor.python guifg=#edbb6d gui=NONE guisp=NONE
hi @conditional guifg=#d8726e guibg=NONE gui=NONE guisp=NONE
hi @type.builtin.python guifg=#B2C9D1 guibg=NONE gui=NONE guisp=NONE
hi TelescopePreviewWrite guifg=#d8726e guibg=NONE gui=bold guisp=NONE
hi UndotreeNode guifg=#96ba92 guibg=NONE gui=bold guisp=NONE
hi UndotreeNext guifg=#96ba92 guibg=NONE gui=NONE guisp=NONE
hi UndotreeBranch guifg=#7d7d7d guibg=NONE gui=NONE guisp=NONE
hi Special guifg=#d8726e guibg=NONE gui=NONE guisp=NONE
hi @function.macro guifg=#96d7ef gui=italic guisp=NONE
hi CmpItemAbbr guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi @operator guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi IlluminatedWordText guifg=NONE guibg=#464646 gui=NONE guisp=NONE
hi GitSignsChangeNr guifg=#71A1B3 guibg=NONE gui=NONE guisp=NONE
hi TelescopePreviewHyphen guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi GitSignsAddLnInline guifg=NONE guibg=#264326 gui=NONE guisp=NONE
hi Comment guifg=#7d7d7d guibg=NONE gui=italic guisp=NONE
hi SignColumn guifg=NONE guibg=#252525 gui=NONE guisp=NONE
hi @type.builtin.c guifg=#B2C9D1 guibg=NONE gui=NONE guisp=NONE
hi DiagnosticFloatingHint guifg=#96d7ef guibg=#252525 gui=NONE guisp=NONE
hi UndotreeTimeStamp guifg=#bdcfe4 guibg=NONE gui=italic guisp=NONE
hi Identifier guifg=#96ba92 guibg=NONE gui=NONE guisp=NONE
hi @method.python guifg=#edbb6d gui=NONE guisp=NONE
hi @punctuation.special guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi CmpItemAbbrMatch guifg=#e3f0e3 guibg=NONE gui=bold guisp=NONE
hi @lsp.type.function guifg=#edbb6d gui=NONE guisp=NONE
hi @punctuation.bracket guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi GitSignsStagedAddNr guifg=#252525 guibg=#96ba92 gui=NONE guisp=NONE
hi @keyword guifg=#d8726e guibg=NONE gui=NONE guisp=NONE
hi @module.go guifg=#e3f0e3 guibg=NONE gui=NONE guisp=NONE
hi @constant.builtin guifg=#ADA5CC guibg=NONE gui=italic guisp=NONE
hi TelescopePreviewRead guifg=#edbb6d guibg=NONE gui=bold guisp=NONE
hi UndotreeHead guifg=#edbb6d guibg=NONE gui=bold guisp=NONE
hi UndotreeSeq guifg=#7d7d7d guibg=NONE gui=NONE guisp=NONE
hi GitSignsStagedChangeNr guifg=#252525 guibg=#96d7ef gui=NONE guisp=NONE
hi @variable.member guifg=#ADA5CC guibg=NONE gui=NONE guisp=NONE
hi @constant guifg=#ADA5CC guibg=NONE gui=italic guisp=NONE
hi @function.call guifg=#edbb6d gui=NONE guisp=NONE
hi @type.qualifier guifg=#d8726e gui=italic guisp=NONE
hi @method.call guifg=#edbb6d gui=NONE guisp=NONE
hi lualine_b_diff_added_normal guifg=#96ba92 guibg=NONE gui=NONE guisp=NONE
hi EndOfBuffer guifg=#252525 guibg=NONE gui=NONE guisp=NONE
hi @function guifg=#edbb6d gui=NONE guisp=NONE
hi @string.special guifg=#d1d1d1 guibg=NONE gui=NONE guisp=NONE
hi GitSignsDeleteNr guifg=#d8726e guibg=NONE gui=NONE guisp=NONE
hi UfoFoldedFg guifg=#7d7d7d guibg=#252525 gui=NONE guisp=NONE
hi @method guifg=#edbb6d gui=NONE guisp=NONE
hi @storageclass guifg=#d1d1d1 guibg=NONE gui=italic guisp=NONE
hi TelescopePreviewExecute guifg=#96ba92 guibg=NONE gui=bold guisp=NONE
hi DiagnosticError guifg=#d76a41 guibg=NONE gui=italic guisp=NONE
hi LuaLineMain guifg=#FFFF00 guibg=#FFFF00 gui=NONE guisp=NONE
hi @parameter guifg=#e3f0e3 guibg=NONE gui=NONE guisp=NONE
hi @repeat guifg=#d8726e guibg=NONE gui=NONE guisp=NONE
hi Visual guifg=NONE guibg=#363636 gui=NONE guisp=NONE
hi @variable guifg=#e3f0e3 gui=NONE guisp=NONE
hi @type guifg=#B2C9D1 guibg=NONE gui=NONE guisp=NONE
hi GitSignsChangeInline guifg=NONE guibg=#252525 gui=NONE guisp=NONE
hi @comment guifg=#7d7d7d gui=italic guisp=NONE
hi @keyword.function guifg=#d8726e guibg=NONE gui=NONE guisp=NONE
hi Title guifg=#e3f0e3 guibg=NONE gui=bold guisp=NONE
hi GitSignsDeleteInline guifg=NONE guibg=#252525 gui=NONE guisp=NONE
hi @property guifg=#ADA5CC guibg=NONE gui=NONE guisp=NONE
hi TelescopePreviewSize guifg=#96ba92 guibg=NONE gui=bold guisp=NONE
hi CursorLineDiff guifg=NONE guibg=NONE gui=NONE guisp=NONE
hi IncSearch guifg=NONE guibg=NONE gui=NONE guisp=NONE
hi @exception guifg=#96d7ef gui=NONE guisp=NONE
hi @string.escape guifg=#d1d1d1 guibg=NONE gui=NONE guisp=NONE
hi GitSignsChange guifg=#96d7ef guibg=NONE gui=NONE guisp=NONE
hi VertSplit guifg=#464646 guibg=NONE gui=NONE guisp=NONE
hi @method.call.python guifg=#edbb6d gui=NONE guisp=NONE
hi StatusLine guifg=#b3b3b3 guibg=#2a2a2a gui=NONE guisp=NONE
hi @tag guifg=#edbb6d gui=NONE guisp=NONE
hi @namespace guifg=#e3f0e3 guibg=NONE gui=NONE guisp=NONE
hi @boolean guifg=#d1d1d1 guibg=NONE gui=NONE guisp=NONE
hi DiagnosticFloatingWarn guifg=#ffb56f guibg=#252525 gui=NONE guisp=NONE
hi CmpItemMenu guifg=#b3b3b3 guibg=NONE gui=italic guisp=NONE
hi Cursor guifg=#e3f0e3 guibg=NONE gui=NONE guisp=NONE
hi CursorLineNr guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi TelescopeResultsNormal guifg=#7d7d7d guibg=NONE gui=NONE guisp=NONE
hi TelescopePromptCounter guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi @storageclass.lifetime guifg=#d1d1d1 guibg=NONE gui=NONE guisp=NONE
hi Preproc guifg=#e3f0e3 guibg=NONE gui=bold guisp=NONE
hi @constructor guifg=#edbb6d gui=NONE guisp=NONE
hi Type guifg=#e3f0e3 guibg=NONE gui=bold guisp=NONE
hi IlluminatedWordWrite guifg=NONE guibg=#464646 gui=NONE guisp=NONE
hi GitSignsAddNr guifg=#96ba92 guibg=NONE gui=NONE guisp=NONE
hi @include guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi @character guifg=#96ba92 guibg=NONE gui=NONE guisp=NONE
hi IndentBlanklineContextSpaceChar guibg=#2a2a2a gui=NONE guisp=NONE
hi CopilotSuggestion guifg=#7d7d7d guibg=NONE gui=NONE guisp=NONE
hi Normal guifg=#e3f0e3 guibg=#252525 gui=NONE guisp=NONE
hi DiffChange guifg=NONE guibg=#223035 gui=NONE guisp=NONE
hi CmpItemKindMethod guifg=#d76a41 guibg=NONE gui=NONE guisp=NONE
hi @number guifg=#83BCD1 guibg=NONE gui=NONE guisp=NONE
hi @string guifg=#96ba92 guibg=NONE gui=NONE guisp=NONE
hi UndotreeCurrent guifg=#e3f0e3 guibg=NONE gui=bold guisp=NONE
hi @tag.delimiter guifg=#b3b3b3 gui=NONE guisp=NONE
hi TelescopePreviewDate guifg=#76a8f0 guibg=NONE gui=NONE guisp=NONE
hi @tag.attribute guifg=#d1d1d1 guibg=NONE gui=NONE guisp=NONE
hi @punctuation.delimiter guifg=#b3b3b3 guibg=NONE gui=NONE guisp=NONE
hi DiagnosticFloatingError guifg=#d76a41 guibg=#252525 gui=NONE guisp=NONE
hi MatchParen guifg=#e3f0e3 guibg=NONE gui=NONE guisp=NONE
hi GitSignsAddInline guifg=NONE guibg=#252525 gui=NONE guisp=NONE
hi Directory guifg=#76a8f0 guibg=NONE gui=bold guisp=NONE
hi Statement guifg=#bdcfe4 guibg=NONE gui=NONE guisp=NONE
hi DiagnosticWarn guifg=#ffb56f guibg=NONE gui=italic guisp=NONE
hi IlluminatedWordRead guifg=NONE guibg=#464646 gui=NONE guisp=NONE
hi DiffAdd guifg=NONE guibg=#162616 gui=NONE guisp=NONE
hi @type.definition guifg=#B2C9D1 guibg=NONE gui=NONE guisp=NONE