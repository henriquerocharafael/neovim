local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Plugin Manager
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'bluz71/vim-nightfly-colors' -- Colorscheme
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim' -- Easy way to install a new Language Server
  use 'williamboman/mason-lspconfig.nvim' -- Dependency of plugin above
  use "terrortylor/nvim-comment" -- Nvim comments
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- Comments based in context

  use 'L3MON4D3/LuaSnip' -- snippet engine
  use {
    'nvim-treesitter/nvim-treesitter', -- Syntax highlight
    run = ':TSUpdate'
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim' -- Fuzzy finder
  use 'kyazdani42/nvim-tree.lua' -- Filetree
  use 'windwp/nvim-autopairs' -- Autoclose pairs
  use 'lewis6991/gitsigns.nvim' -- Git integration
end)
