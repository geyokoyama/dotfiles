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
      require('ibl').setup()
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

  use { "lewis6991/gitsigns.nvim",
    config = function() require('gitsigns').setup() end
  }

  use "EdenEast/nightfox.nvim"

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require('lualine').setup() end
  }

end)
