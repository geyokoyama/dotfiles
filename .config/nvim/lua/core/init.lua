------------
-- CONFIG --
------------

-- CONTEXT
vim.opt.title             = true
vim.opt.colorcolumn       = "80"
vim.opt.relativenumber    = true
vim.opt.scrolloff         = 999
vim.opt.signcolumn        = "yes"
vim.opt["showbreak"]      = "▶▶▶"
vim.opt.list              = true
vim.opt.listchars         = "tab:▶—,eol:↲,space:⋅,nbsp:␣,trail:•,extends:▶,precedes:◀"
vim.opt.breakindent       = true

-- SEARCH
vim.opt.ignorecase        = true
vim.opt.smartcase         = true
vim.opt.hlsearch          = false

-- WHITESPACE
vim.opt.expandtab         = true
vim.opt.tabstop           = 2
vim.opt.softtabstop       = 2
vim.opt.shiftwidth        = 2

-- FOLDING
vim.opt.foldmethod        = "marker"

-- KEYMAPS
require("core.keymaps")

-- NETRW
require("core.netrw")
