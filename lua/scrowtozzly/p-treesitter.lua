require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "json", "lua", "vim", "rust", "regex" },

  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
    disable = {}
  },

  autotag = {
    enable = true,
  }
}
