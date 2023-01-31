local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	-- Plugin Manager
	use("wbthomason/packer.nvim")

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- Colorscheme
	use("bluz71/vim-nightfly-colors") -- Colorscheme

	-- LSP
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("neovim/nvim-lspconfig") -- LSP
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("williamboman/mason.nvim") -- Easy way to install a new Language Server
	use("williamboman/mason-lspconfig.nvim") -- Dependency of plugin above
	use("L3MON4D3/LuaSnip") -- snippet engine

	-- Comments
	use("terrortylor/nvim-comment") -- Nvim comments
	use("JoosepAlviste/nvim-ts-context-commentstring") -- Comments based in context

	-- File icons
	use("kyazdani42/nvim-web-devicons")
	use("onsails/lspkind-nvim") -- vscode-like pictograms

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Filetree
	use("kyazdani42/nvim-tree.lua")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter", -- Syntax highlight
		run = ":TSUpdate",
	})
	use("windwp/nvim-autopairs") -- Autoclose pairs
	use("windwp/nvim-ts-autotag") -- Autoclose tags

	-- Git
	use("lewis6991/gitsigns.nvim") -- Git integration
end)
