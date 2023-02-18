-- [[ netrw.lua ]] --

vim.g.netrw_liststyle = 3
vim.g.netrw_banner    = 0

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
      vim.keymap.set('n', '?', ':h netrw-quickmap<CR>', { buffer = true })
  end
})
