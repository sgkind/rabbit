vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>o", ":NvimTreeFocus<CR>", opts)
map("n", "<leader>w", ":NvimTreeFindFile<CR>", opts)
map("n", "<leader>c", ":NvimTreeCollapse<CR>", opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
