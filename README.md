# jonbooz dotfiles

## Guides

- [vim](/docs/vim.md)
- [tmux](/docs/tmux.md)

## Installing

### New system setup

All required software can be installed with the included `install/new-x.sh` scripts. Scripts are available for MacOS and Linux (Ubuntu). They can either be run directly, or executed as part of a more system specific script.

### zsh

The provided zsh config provides two hooks for local system config:
- `.config/zsh/local/aliases-local.sh` - For any aliases
- `.config/zsh/local/path-local.sh` - For any `$PATH` updates

### nvim

You are required to create the following lua files to provide local system configs. If you don't have any local config, they still need to be created but can return empty tables:
- `lua/jonbooz/local/lsplang.lua` - table with list of local LSPs to install
- `lua/jonbooz/local/plugins.lua` - table with list of local plugins to install
- `lua/jonbooz/local/treesitterlang.lua` - table with list of local treesitter languages to install

## Software Used

- [neovim](https://github.com/neovim/neovim)
- [tmux](https://github.com/tmux/tmux)
- [zsh](https://www.zsh.org/)
- [amethyst](https://ianyh.com/amethyst/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)
- [bat](https://github.com/sharkdp/bat)
- [eza](https://github.com/eza-community/eza)
- [btop](https://github.com/aristocratos/btop)
- [nerd fonts](https://www.nerdfonts.com/font-downloads) for devicons to display in nvim-tree
- [cmake](https://cmake.org/) `brew install cmake` or else the installation of telescopes fzf plugin will fail
- [fd](https://github.com/sharkdp/fd) as an optional dependency of telescope, used in telescope.lua

## Neovim Plugins:

Using [lazy.nvim](https://github.com/folke/lazy.nvim) as a plugin manager, here are the plugins used:

- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) for the dashboard (see the asciis in utils)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for fuzzy finding
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for code parsing etc
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) as a colour scheme.
- [mason.nvim](https://github.com/williamboman/mason.nvim) is used in conjunction with lsp-zero to manage your different LSPs
- [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim) to use NeoVim's LSP client
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) for snippets.
- [undotree](https://github.com/mbbill/undotree) for all your accidental undo's
- [vim-fugitive](https://github.com/tpope/vim-fugitive) for git within vim
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) for a better than nerdtree experience
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) for icons
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) a good looking statusline
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) to comment out your broken code
- [nvim-surround](https://github.com/kylechui/nvim-surround) to surround whatever you want, with whatever you want
- [conform.nvim](https://github.com/stevearc/conform.nvim) to enable formatters such as eslint
- [vim-dadbod](https://github.com/tpope/vim-dadbod/) for mysql connections and queries in vim
- [hop.nvim](https://github.com/smoka7/hop.nvim) for cursor movement
- [zen-mode.nvim](https://github.com/folke/zen-mode.nvim) for distraction-free writing
- [glow.nvim](https://github.com/ellisonleao/glow.nvim) for Markdown rendering
- [template.nvim](https://github.com/nvimdev/template.nvim) for templates



