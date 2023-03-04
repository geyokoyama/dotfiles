-- [[ plugins.lua ]] --

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

  use "mattn/emmet-vim"

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

  use {
    "ggandor/leap.nvim",
    config = function() require('leap').add_default_mappings() end
  }

  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }

  use { 'ibhagwan/fzf-lua',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  use "lewis6991/gitsigns.nvim"

  use "EdenEast/nightfox.nvim"

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

end)
