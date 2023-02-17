-- [[ options.lua ]] --

local set = vim.opt

-- CONTEXT
set.title             = true
set.colorcolumn       = "80"
set.relativenumber    = true
set.scrolloff         = 999
set.signcolumn        = "yes"
set['showbreak']      = "▶▶▶"
set.list              = true
set.listchars         = "tab:▶—,eol:↲,space:⋅,nbsp:␣,trail:•,extends:▶,precedes:◀"

-- THEME
set.termguicolors     = true
vim.cmd('colorscheme nordfox')

-- SEARCH
set.ignorecase        = true
set.smartcase         = true

-- WHITESPACE
set.expandtab         = true
set.tabstop           = 2
set.softtabstop       = 2
set.shiftwidth        = 2
