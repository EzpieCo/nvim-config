-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({ 
      "catppuccin/nvim", 
      as = "catppuccin",
      config = function()
          vim.cmd("colorscheme catppuccin-mocha")
      end
  })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }

  -- it just works
  use {
    'christoomey/vim-tmux-navigator',
    cmd = {
        'tmuxnavigateLeft',
        'tmuxnavigateDown',
        'tmuxnavigateUp',
        'tmuxnavigateRight',
    },
    keys = {
        {'<c-h>', '<cmd><C-U>tmuxnavigateLeft<cr>'},
        {'<c-j>', '<cmd><C-U>tmuxnavigateDown<cr>'},
        {'<c-k>', '<cmd><C-U>tmuxnavigateUp<cr>'},
        {'<c-l>', '<cmd><C-U>tmuxnavigateRight<cr>'},
    }
  }

end)
