local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.cursorlineopt = "number"

-- Clipboard
opt.clipboard = "unnamedplus"

-- Pane Splits
opt.splitright = true
opt.splitbelow = true

-- Tabs
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true

-- Break Indent
opt.breakindent = true
opt.linebreak = true

-- Colors
opt.termguicolors = true

opt.hlsearch = false

-- Mode is shown in status line
opt.showmode = false

-- Save undo history
vim.opt.undofile = true

-- Case Sensitivity
opt.ignorecase = true
opt.smartcase = true

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

opt.inccommand = "split"

-- Sets how neovim will display certain whitespace in the editor.
--  See :help 'list'
--  and :help 'listchars'
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

vim.g.mapleader = " "
vim.g.maplocalleader = " "
