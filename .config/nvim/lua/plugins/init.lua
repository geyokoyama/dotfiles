-------------
-- PLUGINS --
-------------

-- Install package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  "mattn/emmet-vim",

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function() require("nvim-surround").setup() end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("ibl").setup()
    end
  },

  "wellle/targets.vim",

  {
    "ggandor/leap.nvim",
    dependencies = { "tpope/vim-repeat" },
    config = function() require("leap").add_default_mappings() end
  },

  {
    "numToStr/Comment.nvim",
    config = function() require("Comment").setup() end
  },

  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<c-p>", ":FzfLua files<CR>", silent = true },
      { "<c-b>", ":FzfLua buffers<CR>", silent = true }
    },
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function() require("gitsigns").setup() end
  },

  {
    "EdenEast/nightfox.nvim",
    config = function() vim.cmd("colorscheme nordfox") end  -- nightfox, duskfox, nordfox, terafox
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
    config = function() require("lualine").setup() end
  }

})
