-- Only required if you have packer configured as `opt`
local fn = vim.fn

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

		-- auto pair
		use "steelsojka/pears.nvim"

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

    use "EdenEast/nightfox.nvim"
	end,
	config = {
		max_jobs = 16,
		compile_path = packer_util.join_paths("~/.config/nvim/", "site", "lua", "packer_compiled.lua"),
	},
}
