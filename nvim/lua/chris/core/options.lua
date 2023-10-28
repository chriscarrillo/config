local opt = vim.opt

opt.relativenumber = true -- show relative line numbers
opt.number = true -- show absolute line number on cursor line

opt.tabstop = 2 -- use 2 spaces for tabs
opt.shiftwidth = 2 -- use 2 spaces for indent width
opt.expandtab = false -- use tabs
opt.autoindent = true -- copy indent from current line when starting a new one

opt.wrap = false -- disable line wrapping
opt.cursorline = true -- highlight current cursor line

opt.termguicolors = true -- for colorscheme
opt.background = "dark" -- use dark mode when available
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

opt.colorcolumn = "100" -- add ruler to 100
opt.splitright = true
opt.splitbelow = true
opt.swapfile = false

