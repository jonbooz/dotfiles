local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
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


local plugins = {
    -- Searching
    { 'nvim-telescope/telescope.nvim',              tag = '0.1.8',                                                   dependencies = { 'nvim-lua/plenary.nvim' } },

    -- Handles nested comments, use along with Comment.nvim
    { "JoosepAlviste/nvim-ts-context-commentstring" },
    -- Comment Toggler
    { 'numToStr/Comment.nvim',                      dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" } },


    -- Advanced syntax highlight. Is it necessary?
    { "nvim-treesitter/nvim-treesitter",            build = ":TSUpdate",                                             dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" } },

    -- Colour scheme
    { "ellisonleao/gruvbox.nvim",                   priority = 1000,                                                 config = true,                                                   opts = ... },

    -- Package Manager, LSP, completion, and snippets
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',                  branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'L3MON4D3/LuaSnip' },
    { 'honza/vim-snippets' },

    -- Visual undo true
    { 'mbbill/undotree' },

    -- Formatter
    { 'stevearc/conform.nvim' },

    -- :Git plugin
    { 'tpope/vim-fugitive' },

    -- File Explorer tree and devicons
    { 'nvim-tree/nvim-tree.lua' },
    { 'nvim-tree/nvim-web-devicons' },

    -- Status Line
    { 'nvim-lualine/lualine.nvim' },

    -- Surround
    { "kylechui/nvim-surround",                     version = "*",                                                   event = "VeryLazy" },

    -- EasyMotion: hop to
    { 'smoka7/hop.nvim',                            version = "*",                                                   opts = { keys = 'etovxqpdygfblzhckisuran' } },

    -- The Greeter
    { 'goolord/alpha-nvim',                         dependencies = { "nvim-tree/nvim-web-devicons" },                event = "VimEnter" },

    -- Zen Mode for Writing/Reading
    { 'folke/zen-mode.nvim',                        opts = {} },

    -- Hugo Template Support
    { "phelipetls/vim-hugo" },

    -- Nvim Templates
    {
        'nvimdev/template.nvim',
        cmd = { 'Template', 'TemProject' },
        config = function()
            require('template').setup({
                temp_dir = "~/.config/nvim/templates/",
            })
        end
    },


    -- Scratch Pad
    {
        "https://git.sr.ht/~swaits/scratch.nvim",
        lazy = true,
        keys = {
            { "<leader>bs", "<cmd>Scratch<cr>",      desc = "Scratch Buffer",         mode = "n" },
            { "<leader>bS", "<cmd>ScratchSplit<cr>", desc = "Scratch Buffer (split)", mode = "n" },
        },
        cmd = {
            "Scratch",
            "ScratchSplit",
        },
        opts = {},
    },

    -- Database Plugin
    { "tpope/vim-dadbod" },
    { "kristijanhusak/vim-dadbod-completion" },
    { "kristijanhusak/vim-dadbod-ui" },
}

local local_lazy = require("jonbooz.local.plugins")
for _, v in ipairs(local_lazy) do
    table.insert(plugins, v)
end

require("lazy").setup(plugins, opts)
