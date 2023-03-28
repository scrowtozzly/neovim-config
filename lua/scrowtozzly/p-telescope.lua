local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>gf', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

local actionsTelecope = require("telescope.actions")

require("nvim-web-devicons").setup({
  override = {},
  default = true
})

require("telescope").setup {
  defaults = {
    path_display = {
      'smart'
    },
    mappings = {
      i = {
            ["<C-u>"] = actionsTelecope.preview_scrolling_up,
            ["<C-d>"] = actionsTelecope.preview_scrolling_down,
            ["<esc>"] = actionsTelecope.close
      }
    }
  },
  layout_config = {
    horizontal = {
      preview_cutoff = 100,
      preview_width = 0.6
    }
  }
}
