-- for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
	view = {
		adaptive_size = true,
	},
  filters = {
		custom = {
		  ".git/"
		},
		exclude = {
	    ".gitignore"
		},
		dotfiles = true
	},
	git = {
		enable = true
	}
})


