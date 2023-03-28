local null_ls = require("null-ls")

local nullApi = vim.api

local lsp = vim.lsp

local group = nullApi.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      nullApi.nvim_command [[augroup Format]]
      nullApi.nvim_command [[autocmd! * <buffer>]]
      nullApi.nvim_command [[augroup END]]
    end
  end,
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  }
})
