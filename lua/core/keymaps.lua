-- Definir leader key
vim.g.mapleader = " "

local keymap = vim.keymap

-- Navegação básica
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Telescope (fuzzy finder)
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

-- Terminal integrado
keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>")
keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Troca de temas
keymap.set("n", "<leader>th", "<cmd>Telescope colorscheme<cr>")

-- LSP (será configurado quando LSP estiver ativo)
keymap.set("n", "gd", vim.lsp.buf.definition)
keymap.set("n", "K", vim.lsp.buf.hover)
keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
          
local M = {}

M.setup_cmp_keymaps = function(cmp, luasnip)
  -- Mapeamentos de Teclas do nvim-cmp
  vim.keymap.set("i", "<Down>", cmp.mapping.select_next_item(), { desc = "Próxima sugestão" })
  vim.keymap.set("i", "<Up>", cmp.mapping.select_prev_item(), { desc = "Sugestão anterior" })
  vim.keymap.set("i", "<Tab>", cmp.mapping.confirm({ select = true }), { desc = "Confirmar seleção" })
  vim.keymap.set("i", "<C-b>", cmp.mapping.scroll_docs(-4), { desc = "Rolar docs para trás" })
  vim.keymap.set("i", "<C-f>", cmp.mapping.scroll_docs(4), { desc = "Rolar docs para frente" })
  vim.keymap.set("i", "<C-e>", cmp.mapping.abort(), { desc = "Cancelar" })
  -- ... outros atalhos do cmp
end

-- Exporta a função para que ela possa ser usada em outros arquivos
return M
