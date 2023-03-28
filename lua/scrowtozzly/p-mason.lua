require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls', 'html', 'cssls', 'eslint', 'tsserver', 'emmet_ls',
    'clangd'
  },
  automatic_installation = true,
})
