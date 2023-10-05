-----------
-- NETRW --
-----------

-- configs
vim.g.netrw_liststyle = 3
vim.g.netrw_banner    = 0
vim.g.netrw_keepdir   = 0

-- keymaps
vim.keymap.set('n', '-', ':Explore<CR>')
vim.keymap.set('n', '<Leader>-', ':Rexplore<CR>', { silent = true })

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'netrw',
  desc = "Better mappings for netrw",
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, { buffer = true, silent = true })
    end

    bind('?', ':help netrw-quickmap<CR>')
    bind('P', '<C-w>z')
  end
})
