vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>o", ":NvimTreeFocus<CR>", opts)
map("n", "<leader>w", ":NvimTreeFindFile<CR>", opts)
map("n", "<leader>c", ":NvimTreeCollapse<CR>", opts)
