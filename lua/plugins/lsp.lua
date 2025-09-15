local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

-- A função `capabilities` informa ao LSP que o `nvim-cmp` está ativo para autocompleção
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Este bloco usa o Mason para configurar os servidores que você instalou
require ("mason").setup({
  ensure_installed = {
    -- Adicione aqui os servidores que você quer que o Mason instale e configure
    "lua_ls",
    "pyright",
    "jdtls",
    "clangd",
    "bashls",
    "ts_ls",
  },
})

-- Configurar os servidores de linguagem.
-- As configurações abaixo serão mescladas com as padrões do Mason.
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
})

-- Outros servidores, já que você os tinha no seu arquivo original
lspconfig.ts_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.jdtls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.bashls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
