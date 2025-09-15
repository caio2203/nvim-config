# Configuração Neovim Minimalista

Uma configuração limpa e focada no Neovim, com apenas o essencial para um ambiente de desenvolvimento robusto e eficiente.

-----

### Funcionalidades

  * **LSP:** Suporte completo para diversas linguagens.
  * **Fuzzy Finder:** Encontre arquivos e texto rapidamente com o **Telescope**.
  * **Treesitter:** Destaque de sintaxe inteligente e eficiente.
  * **Terminal Integrado:** Abra e feche um terminal rapidamente dentro do editor com o **ToggleTerm**.
  * **Múltiplos Temas:** Suporte para temas populares como **TokyoNight**, **Catppuccin**, **Kanagawa** e **Nightfox**.
  * **Statusline:** Uma barra de status elegante e personalizável com o **Lualine**.

-----

### Pré-requisitos

Certifique-se de que `git`, `curl` e o `neovim` já estão instalados no seu sistema.

#### **Instalação do Neovim (v0.9.0 ou superior)**

  * **Ubuntu/Debian:** `sudo apt install git curl neovim`
  * **Fedora:** `sudo dnf install git curl neovim`
  * **Arch Linux:** `sudo pacman -S git curl neovim`
  * **macOS:** `brew install git neovim`

Após instalar o Neovim, os servidores de linguagem serão gerenciados e instalados automaticamente pelo plugin **Mason** na primeira execução.

-----

### Instalação

Siga estes passos para ter a configuração em funcionamento.

1.  **Faça o backup de sua configuração atual** (opcional):
    `mv ~/.config/nvim ~/.config/nvim.backup`

2.  **Clone o repositório:**
    `git clone https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git ~/.config/nvim`

3.  **Primeira execução:**
    Abra o Neovim no seu terminal com `nvim`. O **`lazy.nvim`** detectará e instalará todos os plugins automaticamente.

-----

### Keybinds (Atalhos de Teclado)

O **Leader Key** para esta configuração é a `<Space>`.

#### **Navegação**

| Atalho | Ação |
| :--- | :--- |
| `<C-h>` | Mover para a janela esquerda |
| `<C-j>` | Mover para a janela inferior |
| `<C-k>` | Mover para a janela superior |
| `<C-l>` | Mover para a janela direita |

#### **Fuzzy Finder (Telescope)**

| Atalho | Ação |
| :--- | :--- |
| `<Leader>ff` | Encontrar arquivos |
| `<Leader>fg` | Buscar texto (grep) |
| `<Leader>fb` | Listar buffers |
| `<Leader>th` | Trocar tema |

#### **Terminal Integrado (ToggleTerm)**

| Atalho | Ação |
| :--- | :--- |
| `<Leader>t` | Abrir/fechar terminal |
| `<Esc>` | Sair do modo terminal |

-----

### Configuração de LSPs

O `mason.nvim` gerencia a instalação dos servidores de linguagem, mas você pode personalizá-los.

#### **Adicionar um Novo Servidor**

Edite o arquivo `lua/plugins/lsp.lua` e adicione o `setup` do servidor desejado.

```lua
-- Exemplo: TypeScript
lspconfig.ts_ls.setup({})
```

#### **Configuração Avançada**

Você pode criar configurações específicas para cada linguagem, como ambientes virtuais para Python ou servidores de linguagem para Java. Para mais detalhes, consulte os arquivos dentro de `lua/plugins`.

-----

### Personalização

#### **Trocar o Tema Padrão**

Edite `lua/plugins/themes.lua` para escolher o seu tema favorito.

```lua
-- Exemplo para o tema TokyoNight
vim.cmd.colorscheme("tokyonight-night")
```

#### **Customizar a Statusline**

Para alterar cores ou componentes, edite o arquivo `lua/plugins/statusline.lua`.

-----

### Comandos Úteis

#### **Lazy.nvim (Gerenciador de Plugins)**

  * `:Lazy` - Abrir a interface do gerenciador.
  * `:Lazy update` - Atualizar todos os plugins.

#### **LSP**

  * `:LspInfo` - Ver informações sobre o Language Server ativo.
  * `:LspRestart` - Reiniciar o servidor de linguagem.

#### **Outros**

  * `:TSUpdate` - Atualizar os parsers do Treesitter.

-----

### Troubleshooting

Se algo não estiver funcionando, tente os seguintes comandos para diagnosticar o problema.

  * **Plugin não funciona?** - Verifique os logs com `:Lazy log` ou reinicie com `:source ~/.config/nvim/init.lua`.
  * **LSP não inicia?** - Verifique se o servidor está instalado e ativo com `:LspInfo`.
  * **Lentidão?** - Use `:Lazy profile` para ver o tempo de inicialização de cada plugin.

-----

### Contribuição

Sinta-se à vontade para abrir issues ou pull requests\! Sua contribuição é bem-vinda.

-----

### Licença

Esta configuração é de domínio público. Use e modifique como desejar\!
