-- [[ plugins.lua ]] --

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

  use {
    "kylechui/nvim-surround",
    tag = "*",
    config = function() require('nvim-surround').setup() end
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require('indent_blankline').setup({
        show_end_of_line = true
      })
    end
  }

  use "EdenEast/nightfox.nvim"

end)
