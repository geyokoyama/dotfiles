-- [[ keymaps.lua ]] --

local map = vim.keymap

-- <Leader>
vim.g.mapleader = " "
vim.g.localleader = ","

-- <Esc>
map.set({ 'i', 'v' }, 'jk', '<Esc>')

-- edit/source vimrc
map.set('n', '<Leader>ev', ':e $MYVIMRC<CR>')
map.set('n', '<Leader>sv', ':luafile %<CR>')

-- highlight cursor area
map.set('n', '<F2>', ':set cursorcolumn!<CR> :set cursorline!<CR>')

-- toggle hidden characters
map.set('n', '<F3>', ':set list!<CR>', { silent = true })

-- tab navigation
map.set('n', '<Leader>b', ':ls<CR>:b<Space>')
map.set('n', '<tab>', ':if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>', { silent = true })
map.set('n', '<s-tab>', ':if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>', { silent = true })

-- clipboard
map.set({'n', 'x'}, '<Leader>y', '"+y')
map.set({'n', 'x'}, '<Leader>p', '"+p')
