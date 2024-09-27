-- Tab settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation and mouse
vim.opt.autoindent = true
vim.opt.mouse = ""

-- Colors and display
vim.opt.termguicolors = true
vim.opt.fillchars = { eob = " " }
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Update time and completion window height
vim.opt.updatetime = 50
vim.o.pumheight = 15

-- Hide mode display
vim.o.showmode = false

-- Sign column
vim.o.signcolumn = "yes"

-- Global variable
vim.g.noshowmode = true
