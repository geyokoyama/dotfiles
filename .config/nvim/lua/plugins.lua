-- [[ plugins.lua ]] --

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  })
end)
