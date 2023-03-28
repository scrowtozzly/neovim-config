local opts = {
  noremap = true,
  silent = true
}

local keyset = vim.keymap.set

local api = vim.api

keyset('n', '[d', vim.diagnostic.goto_prev, opts)
keyset('n', ']d', vim.diagnostic.goto_next, opts)

local on_attach = function(client, bufnr)
  api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = {
    noremap = true,
    silent = true,
    buffer = bufnr
  }

  keyset('n', 'gd', '<cmd>Telescope lsp_definition<cr>', bufopts)
  keyset('n', 'K', vim.lsp.buf.hover, bufopts)
  keyset('n', 'gi', vim.lsp.buf.implementation, bufopts)
  keyset('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  keyset('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  keyset('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  keyset('n', 'gr', vim.lsp.buf.references, bufopts)
  keyset('n', '<leader>d', '<cmd>Telescope lsp_document_symbols<cr>', bufopts)

  api.nvim_create_autocmd('BufWritePre', {
    group = api.nvim_create_augroup('LspFormatting', {
      clear = true
    }),
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_config = {
  capabilities = capabilities,
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}

require('mason-lspconfig').setup_handlers({
  function(server_name)
    require('lspconfig')[server_name].setup(lsp_config)
  end,
  lua_ls = function()
    require('lspconfig').lua_ls.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              'vim'
            }
          }
        }
      }
    }))
  end,
  html = function()
    require('lspconfig').html.setup(vim.tbl_extend('force', lsp_config, {}))
  end,
  cssls = function()
    require('lspconfig').cssls.setup(vim.tbl_extend('force', lsp_config, {}))
  end,
  tsserver = function()
    require('lspconfig').tsserver.setup(vim.tbl_extend('force', lsp_config, {}))
  end,
  eslint = function()
    require('lspconfig').eslint.setup(vim.tbl_extend('force', lsp_config, {}))
  end,
  emmet_ls = function()
    require('lspconfig').emmet_ls.setup(vim.tbl_extend('force', lsp_config, {}))
  end,
  clangd = function()
    require('lspconfig').clangd.setup(vim.tbl_extend('force', lsp_config, {}))
  end
})
