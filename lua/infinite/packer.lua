-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }}
	  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
	  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	  use {
		  'nvim-tree/nvim-tree.lua',
		  requires = {
			  'nvim-tree/nvim-web-devicons', -- optional
		  },
		  config = function()
			  require("nvim-tree").setup {}
		  end
	  }
	  use {'romgrk/barbar.nvim', requires = {
		  'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		  'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	  }}

	  use {
		  'VonHeikemen/lsp-zero.nvim',
		  branch = 'v2.x',
		  requires = {
			  -- LSP Support
			  {'neovim/nvim-lspconfig'},             -- Required
			  {                                      -- Optional
			  'williamboman/mason.nvim',
			  run = function()
				  pcall(vim.cmd, 'MasonUpdate')
			  end,
		  },
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
  end}
  use {"tpope/vim-fugitive"}
  use {"github/copilot.vim"}
  end)
