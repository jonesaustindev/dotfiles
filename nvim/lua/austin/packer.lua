-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use { "catppuccin/nvim", as = "catppuccin" }

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

	use 'nvim-treesitter/playground'

	use 'theprimeagen/harpoon'

	use 'mbbill/undotree'

	use 'tpope/vim-fugitive'

	use 'lewis6991/gitsigns.nvim';

	use "zbirenbaum/copilot.lua";

	-- LSP and more
	use 'onsails/lspkind-nvim'           -- vscode-like pictograms
	use 'hrsh7th/cmp-buffer'             -- nvim-cmp source for buffer words
	use 'hrsh7th/cmp-nvim-lsp'           -- nvim-cmp source for neovim's built-in LSP
	use 'hrsh7th/nvim-cmp'               -- Completion
	use 'neovim/nvim-lspconfig'          -- LSP
	use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'L3MON4D3/LuaSnip'

	-- Comments
	use 'numToStr/Comment.nvim'; -- "gc" to comment visual regions/lines
	use 'JoosepAlviste/nvim-ts-context-commentstring';

	use 'tpope/vim-sleuth';         -- Detect tabstop and shiftwidth automatically

	use 'nvim-lualine/lualine.nvim'; -- Fancier statusline

	-- Auto pairs
	use 'windwp/nvim-autopairs';

	-- Transparency
	use 'xiyaowong/transparent.nvim';

	-- Center buffer
	use { "shortcuts/no-neck-pain.nvim", tag = "*" };

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	};

	use "tpope/vim-rails";

	use {
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	}

	use {
		'j-hui/fidget.nvim',
		tag = 'legacy'
	}

	-- Lua
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
end)
