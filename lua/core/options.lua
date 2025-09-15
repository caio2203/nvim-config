-- Opções básicas do Neovim
local opt = vim.opt

-- Interface
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"

-- Comportamento
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"

-- Busca
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Indentação
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Splits
opt.splitright = true
opt.splitbelow = true
