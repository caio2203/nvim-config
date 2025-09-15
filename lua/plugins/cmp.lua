local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
  return
end

-- Chama o arquivo 'keymaps' e executa a função que contém os atalhos
-- Isso garante que a variável 'cmp' está disponível
local keymaps = require("core.keymaps")
keymaps.setup_cmp_keymaps(cmp, luasnip)

-- Configuração do nvim-cmp
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  }),

  completion = {
    completeopt = "menu,menuone,noinsert",
  },

  formatting = {
    format = require("lspkind").cmp_format({
      with_text = true,
      menu = {
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        path = "[Path]",
        luasnip = "[Snip]",
      },
    }),
  },
})
