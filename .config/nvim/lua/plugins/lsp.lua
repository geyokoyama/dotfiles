--------------------------
-- PLUGINS LSP --
--------------------------

-- Setup mason & mason-lspconfig
require("mason").setup()
require("mason-lspconfig").setup()

-- Setup nvim-cmp
local cmp = require("cmp")
cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "path" }
  }
})

cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    {
      name = 'cmdline'
    }
  })
})

-- Setup nvim-lsp-config
local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup language servers
lspconfig.lua_ls.setup({
  capabilities = capabilities
})
