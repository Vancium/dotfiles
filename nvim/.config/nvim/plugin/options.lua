local opt = vim.opt

-- Line numbers : true | false
opt.number = true

-- Relative Line Numbers : true | false
opt.relativenumber = true

-- Auto indent, copies indent fro mcurrentline when starting a new line
opt.autoindent = true

-- Adjust defualt colors based on value: "light | "dark"
opt.background = "dark"

-- Behavior for backspace, delete, CTRL-w, CTRL-u
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard = "unnamedplus"

-- Highlights text line with cursor
opt.cursorline = true

-- Value to be highlighted by cursorline
opt.cursorlineopt = "number"

-- Use spaces for tabs
opt.expandtab = true

-- Turns of highlighting of previous search patterns
opt.hlsearch = false

-- Ignore case in search patterns
opt.ignorecase = true

-- Open up split window when seaching
opt.inccommand = "split"

-- Incrimentaly updates search value when searching
opt.incsearch = true

-- Keep 8 lines when scrolling
opt.scrolloff = 8

--Shell to use for ! commands
opt.shell = "zsh"

-- Number of spaces to use when auto indenting
opt.shiftwidth = 4

-- Characters to indicate when lines are wrapped
opt.showbreak = "+++ "

-- Ignores 'ignorecase' if search pattern contains uppercase letters
opt.smartcase = true

-- Smart indenting when indenting a new line
opt.smartindent = true

-- Always show sign column
opt.signcolumn = "yes"

-- Number of spaces to use for a tab when performting editing operations
opt.softtabstop = 4

-- Horizontal splits, new window is below old one
opt.splitbelow = true

-- Vertical splits, new window is to the right of old one
opt.splitright = true

-- Don't want swap files
opt.swapfile = false

-- Number of spaces that a tab counts for
opt.tabstop = 4

-- 24 bit RGB colors
opt.termguicolors = true

opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Directory to store

opt.wrap = true
