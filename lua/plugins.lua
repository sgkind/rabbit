-- Only required if you have packer configured as `opt`
local fn = vim.fn

-- The root dir to install all plugins.
vim.g.plugin_home = "~/.config/nvim/site/pack/packer"

-- Where is install packer.nvim -- the package manager
local packer_dir = vim.g.plugin_home .. "/opt/packer.nvim"

-- Whether this is a fress install, i.e.
local fresh_install = false

-- Auto-install packer in case it hasn't been installed.
if fn.glob(packer_dir) == "" then
	fresh_install = true

	-- install packer.nvim
	local packer_repo = "https://github.com/wbthomason/packer.nvim"
	local install_cmd = string.format("!git clone --depth=1 %s %s", packer_repo, packer_dir)

	vim.api.nvim_echo({ {"Installing packer.nvim", "Type" } }, true, {})
	vim.cmd(install_cmd)
end

-- Load packer.nvim
vim.cmd [[packadd packer.nvim]]
local packer_util = require("packer.util")

return require('packer').startup {
	function(use)
    -- it is recommended to put impatient.nvim before any other plugins
		use {"lewis6991/impatient.nvim", config = [[require('impatient')]]}

		use "wbthomason/packer.nvim"

    use 'neovim/nvim-lspconfig'

		-- 目录
		use {
			'nvim-tree/nvim-tree.lua',
			requires = {'nvim-tree/nvim-web-devicons'},
			tag = 'nightly'
		}

		-- highlight
		use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
		}

		-- indent
		use "lukas-reineke/indent-blankline.nvim"
	end,
	config = {
		max_jobs = 16,
		compile_path = packer_util.join_paths("~/.config/nvim/", "site", "lua", "packer_compiled.lua"),
	},
}
