-- EXAMPLE
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "pyright", "gopls", "rust_analyzer" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- typescript
lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
-- Zig
lspconfig.zls.setup {
  capabilities = nvlsp.capabilities,
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  cmd = { "zls" },
  filetypes = { "zig", "zir" },
  root_dir = lspconfig.util.root_pattern("zls.json", "build.zig", ".git"),
  single_file_support = true,
}
