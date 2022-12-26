vim.opt.termguicolors = true

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

-- for indent-blankline
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
require("indent_blankline").setup {
	show_current_context = true,
	show_current_context_start = true,
	show_end_of_line = true,
	space_char_blankline = " ",
}

-- for pear
require("pears").setup()

-- for telescope
require("telescope").setup ({
})
