local lazy = vim.fn.stdpath('data') .. "lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazy
  })
end

local lazyOpt = vim.opt

lazyOpt.rtp:prepend(lazy)

require('lazy').setup({
  "lukas-reineke/indent-blankline.nvim",

  "iamcco/markdown-preview.nvim",
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",

  "MunifTanjim/eslint.nvim",
  "MunifTanjim/prettier.nvim",

  "windwp/nvim-ts-autotag",

  "windwp/nvim-autopairs",

  "jose-elias-alvarez/null-ls.nvim",

  "manzeloth/live-server",

  "Mofiqul/dracula.nvim",
  {
    "neovim/nvim-lsp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  },
  "nvim-tree/nvim-web-devicons",

  "nvim-tree/nvim-tree.lua",

  {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",

    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind.nvim"
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.1',
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = "<cmd>TSUpdate"
  },
  "nvim-lualine/lualine.nvim"
})
