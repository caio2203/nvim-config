local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- AQUI VAI A CONFIGURAÇÃO
lualine.setup({
  options = {
    -- Escolha um tema. 'auto' usa o tema do seu Neovim, ou escolha um como 'dracula', 'gruvbox', 'tokyonight'.
    theme = "auto",
    -- Adicione bordas para separar os componentes.
    component_separators = { left = "", right = "" },
    -- Configura o modo de exibição, 'diff' mostra a contagem de linhas adicionadas/removidas
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    -- Seção da esquerda: modo, branch do git, nome do arquivo
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filename" },
    -- Seção da direita: tipo do arquivo, codificação, LSP, posição do cursor
    lualine_x = { "filetype", "encoding" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = { "fugitive", "nvim-tree" },
})
