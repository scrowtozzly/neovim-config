local keyset = vim.keymap.set

keyset('n', '<leader>w', ':w<CR>')
keyset('n', '<leader>q', ':q<CR>')
keyset('n', '<C-s>', ':so<CR>')

keyset('n', '<C-e>', ':bn<CR>')
keyset('n', '<C-r>', ':bp<CR>')

keyset('n', '<F2>', '<cmd>NvimTreeToggle<cr>')
