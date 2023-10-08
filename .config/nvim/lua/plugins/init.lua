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
    config = function() require("ibl").setup() end
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
      { "<Leader>\\", ":FzfLua files<CR>", silent = true },
      { "<Leader>bb", ":FzfLua buffers<CR>", silent = true },
      { "<Leader>k", ":FzfLua builtin<CR>", silent = true },
      { "<Leader>f", ":FzfLua live_grep<CR>", silent = true }
    },
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function() require("gitsigns").setup() end,
    lazy = false,
    keys = {
      { "<Leader>hh", ":Gitsigns next_hunk<CR>" },
      { "<Leader>HH", ":Gitsigns prev_hunk<CR>" },
      { "<Leader>hs", ":Gitsigns stage_hunk<CR>", mode = { "n", "v" } },
      { "<Leader>hS", ":Gitsigns stage_buffer<CR>" },
      { "<Leader>hr", ":Gitsigns reset_hunk<CR>", mode = { "n", "v" } },
      { "<Leader>hR", ":Gitsigns reset_buffer<CR>" },
      { "<Leader>hRR", ":Gitsigns reset_buffer_index<CR>" },
      { "<Leader>hu", ":Gitsigns undo_stage_hunk<CR>" },
      { "<Leader>hp", ":Gitsigns preview_hunk<CR>" },
      { "<Leader>hb", ":Gitsigns blame_line full<CR>" },
      { "<Leader>tb", ":Gitsigns toggle_current_line_blame<CR>" },
      { "<Leader>hd", ":Gitsigns diffthis<CR>" },
      { "<Leader>hD", ":Gitsigns diffthis ~<CR>" },
      { "<Leader>td", ":Gitsigns toggle_deleted<CR>" },
    }
  },

  {
    "EdenEast/nightfox.nvim",
    config = function() vim.cmd("colorscheme nordfox") end  -- nightfox, duskfox, nordfox, terafox
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
    config = function() require("lualine").setup() end
  },

  "sindrets/diffview.nvim",

  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<F4>", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  }

})
