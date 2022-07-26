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
		use 'simrat39/rust-tools.nvim'

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

		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.0',
			requires = {{'nvim-lua/plenary.nvim'}}
		}

		-- nvim-cmp
		use 'hrsh7th/cmp-nvim-lsp'  -- { name= nvim_lsp }
		use 'hrsh7th/cmp-buffer'    -- { name = 'buffer' }
		use 'hrsh7th/cmp-path'      -- { name = 'path' }
		use 'hrsh7th/cmp-cmdline'   -- { name = 'cmdline' }
		use 'hrsh7th/nvim-cmp'
		-- vsnip
		use 'hrsh7th/cmp-vsnip'
		use 'hrsh7th/vim-vsnip'
		use 'rafamadriz/friendly-snippets'
		-- lspkind
		use 'onsails/lspkind-nvim'

		use {
			"akinsho/toggleterm.nvim",
			tag = '*',
		}

		-- A blazing fast and easy to configure neovim statusline
    use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true}
		}
	end,
	config = {
		max_jobs = 16,
		compile_path = packer_util.join_paths("~/.config/nvim/", "site", "lua", "packer_compiled.lua"),
	},
}
