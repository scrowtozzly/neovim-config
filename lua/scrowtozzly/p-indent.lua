local indentOpt = vim.opt

local indentCmd = vim.cmd
indentOpt.list = true

indentOpt.listchars:append "space:⋅"
indentOpt.listchars:append "eol:↴"

indentCmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
indentCmd [[highlight IndentBlanklineIndent2 guifg=#E06C75 gui=nocombine]]
indentCmd [[highlight IndentBlanklineIndent3 guifg=#E06C75 gui=nocombine]]
indentCmd [[highlight IndentBlanklineIndent4 guifg=#E06C75 gui=nocombine]]
indentCmd [[highlight IndentBlanklineIndent5 guifg=#E06C75 gui=nocombine]]
indentCmd [[highlight IndentBlanklineIndent6 guifg=#E06C75 gui=nocombine]]

require('indent_blankline').setup({
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = true,
  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
})
