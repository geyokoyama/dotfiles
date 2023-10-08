-------------
-- KEYMAPS --
-------------

-- <Leader>
vim.g.mapleader = " "
vim.g.localleader = ","

-- <Esc>
vim.keymap.set({ "i", "v" }, "jk", "<Esc>")

-- edit/source vimrc
vim.keymap.set("n", "<Leader>ev", ":edit $MYVIMRC<CR>")
vim.keymap.set("n", "<Leader>sv", ":luafile %<CR>")

-- highlight cursor area
vim.keymap.set("n", "<F2>", ":set cursorcolumn!<CR> :set cursorline!<CR>")

-- toggle hidden characters
vim.keymap.set("n", "<F3>", ":set list!<CR>", { silent = true })

-- tab navigation
vim.keymap.set("n", "<Leader>b", ":ls<CR>:b<Space>")
vim.keymap.set("n", "<tab>", ":if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>", { silent = true })
vim.keymap.set("n", "<s-tab>", ":if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>", { silent = true })

-- window navigation
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")

-- window resizing
vim.keymap.set("n", "<A-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<A-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<A-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<A-Right>", ":vertical resize +2<CR>")

-- clipboard
vim.keymap.set({"n", "v"}, "<Leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<Leader>p", "\"+p")
