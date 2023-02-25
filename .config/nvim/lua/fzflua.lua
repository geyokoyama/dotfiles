-- [[ fzflua.lua ]] --

vim.keymap.set('n','<c-p>', ':FzfLua files<CR>', { silent = true })
vim.keymap.set('n','<Leader>b', ':FzfLua buffers<CR>', { silent = true })
