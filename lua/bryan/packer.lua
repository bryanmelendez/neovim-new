-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use { "catppuccin/nvim", as = "catppuccin" }

-- use ({ 
-- 	'ellisonleao/gruvbox.nvim',
-- 	as = 'gruvbox',
-- 	config = function()
-- 		vim.cmd('colorscheme gruvbox')
-- 	end
-- })

-- use {
--     'maxmx03/solarized.nvim',
--     config = function()
--       vim.o.background = 'dark' -- or 'light'
-- 
--       vim.cmd.colorscheme 'solarized'
--     end
-- }

-- use {
--     'EdenEast/nightfox.nvim', -- Packer
--     config = function() 
--         vim.cmd("colorscheme carbonfox")
--     end
-- }

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
	  --- Uncomment these if you want to manage LSP servers from neovim
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
end)
