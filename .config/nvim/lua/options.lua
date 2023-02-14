-- [[ options.lua ]] --

local set = vim.opt

-- CONTEXT
set.title          = true
set.colorcolumn    = "80"
set.relativenumber = true
set.scrolloff      = 999
set.signcolumn     = "yes"
set['showbreak']   = '▶▶▶'  -- hidden character to indicate start of wrapped line
set.listchars      = 'tab:│·,eol:↲,nbsp:␣,trail:•,extends:▶,precedes:◀' -- set hidden characters

-- THEME
set.termguicolors  = true
vim.g.background   = "dark"

-- SEARCH
set.ignorecase     = true
set.smartcase      = true

-- WHITESPACE
set.expandtab      = true
set.tabstop        = 2
set.softtabstop    = 2
set.shiftwidth     = 2
