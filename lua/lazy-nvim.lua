-- Instalar lazy.nvim automaticamente
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- Verificar se git está disponível
  if vim.fn.executable("git") == 0 then
    vim.notify("Git não encontrado! Instale git primeiro: sudo apt install git", vim.log.levels.ERROR)
    return
  end
  
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configurar plugins
require("lazy").setup({
 
  -- Mason
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
  },
  
  -- Lsp
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("plugins.lsp")
    end,
  },
  
  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.telescope")
    end,
  },

  -- Terminal integrado
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("plugins.terminal")
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("plugins.lualine")
    end,
  },

  -- Autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-cmdline",
      "onsails/lspkind.nvim",
    },
    config = function()
      require("plugins.cmp")
    end,
  },

  -- Temas
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "rebelot/kanagawa.nvim" },
  { "EdenEast/nightfox.nvim" },
})
