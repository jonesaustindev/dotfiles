-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
 
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use 'nvim-treesitter/playground'

	use 'theprimeagen/harpoon'

	use 'mbbill/undotree'

	use 'tpope/vim-fugitive'

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
	};

    use 'lewis6991/gitsigns.nvim';

    use "zbirenbaum/copilot.lua";

    use { -- Autocompletion
      'hrsh7th/nvim-cmp',
      requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    };

    -- Formatting and linting
    use 'jose-elias-alvarez/null-ls.nvim';
    use 'jayp0521/mason-null-ls.nvim';

    -- Comments
    use 'numToStr/Comment.nvim'; -- "gc" to comment visual regions/lines
    use 'JoosepAlviste/nvim-ts-context-commentstring';

    -- Tabs
    use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
}
end)
