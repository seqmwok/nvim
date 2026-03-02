local opt = vim.opt

-- UI & View
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 10
opt.showmode = false
opt.laststatus = 3
opt.cursorlineopt = "number,line"

-- Mouse & System
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.updatetime = 250
opt.timeoutlen = 300

-- Tabs & Indent
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartindent = true
opt.breakindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Files & History
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Windows & Splits
opt.splitbelow = true
opt.splitright = true
opt.wrap = false

-- Visual Clean
opt.fillchars = { eob = " " }
opt.list = true
opt.listchars = { tab = "» ", trail = "·" }
