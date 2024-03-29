vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} } --handles file search and grep searches
	}
	use { "catppuccin/nvim", as = "catppuccin" } --color scheme plugin

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}--handles parsing language files and coloring code
	use('theprimeagen/harpoon')
	use('mbbill/undotree') -- manages complex undo history
	use('tpope/vim-fugitive')
	use{

		{'VonHeikemen/lsp-zero.nvim', branch = 'v2.x'};

		-- LSP Support
		{'neovim/nvim-lspconfig'};             -- Required
		{                                      -- Optional
		'williamboman/mason.nvim',
		run = function()
			pcall(vim.cmd, 'MasonUpdate')
		end,
	};
	{'williamboman/mason-lspconfig.nvim'}; -- Optional

	-- Autocompletion
	{'hrsh7th/nvim-cmp'};     -- Required
	{'hrsh7th/cmp-nvim-lsp'}; -- Required
	{'L3MON4D3/LuaSnip'};     -- Required
}
end)
