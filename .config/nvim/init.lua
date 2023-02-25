-- [[ init.lua ]] --

-- IMPORTS
require('options')
require('keymaps')
require('plugins')
require('netrw')
require('fzflua')

-- PLUGINS
require('lualine').setup {
  options = {
    component_separators = { left = '╲', right = '╱' },
    section_separators = { left = '', right = '' }
  }
}
