vim.g.mapleader = "q"

vim.opt.guicursor = ""

vim.opt.nu = true -- display line numbers in gutter
vim.opt.relativenumber = true

-- 4 space indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- space indent

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.updatetime = 100 -- trigger git change gutter status after 100ms

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"


vim.opt.colorcolumn = "160"
