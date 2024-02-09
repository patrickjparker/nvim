-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme
  use {
      "sainnhe/everforest",
      config = function()
          vim.cmd "set background=dark"
          vim.cmd "colorscheme everforest"
      end,
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('theprimeagen/harpoon')
  use('tpope/vim-fugitive')

  use {
      "nvim-lualine/lualine.nvim",
      after = "nvim-treesitter",
      config = function()
          require("lualine").setup()
      end,
      requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  }


  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  -- Which key setup
  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

  use { "Pocco81/auto-save.nvim" }

  use { "github/copilot.vim" }
  use { "lewis6991/gitsigns.nvim" }

  -- Packer
  use { "dgagn/diagflow.nvim" }
end)
