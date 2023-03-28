local ls = require("luasnip")

ls.config.set_config({
  history = true,
  updateevents = 'TextChanged,TextChangedI',
  enable_autosnippets = true,
})

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local sn = ls.snippet_node

ls.add_snippets("all", {
  s("ternary", {
    -- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
    i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
  })
})
