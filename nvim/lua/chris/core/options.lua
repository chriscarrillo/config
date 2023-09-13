local opt = vim.opt

opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new one

opt.wrap = false -- disable line wrapping

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true -- highlight the current cursor line

-- turn on termguicolors for colorscheme to work
opt.termguicolors = true
opt.background = "dark" -- use dark mode when available
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

opt.backspace = "indent,eol,start" -- allow backspaces on indent, end of line, or insert mode start position

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

