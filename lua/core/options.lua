local opt = vim.opt

-- Line Numbers
opt.number = true

-- Tabs and Indentation
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.wrap = false
opt.breakindent = true

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor Line
opt.cursorline = true

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Minimal number of screen lines to keep above and below the cursor
opt.scrolloff = 10

-- Don't show the mode, since it's already in the status line
opt.showmode = false

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = 'unnamedplus'

-- Decrease update time
vim.opt.updatetime = 250
