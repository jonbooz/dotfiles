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
    { 'nvim-telescope/telescope.nvim',              tag = '0.1.8',                                                   dependencies = { 'nvim-lua/plenary.nvim' } },

    { "JoosepAlviste/nvim-ts-context-commentstring" },

    { "nvim-treesitter/nvim-treesitter",            build = ":TSUpdate",                                             dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" } },

    -- Colour scheme
    { "ellisonleao/gruvbox.nvim",                   priority = 1000,                                                 config = true,                                                   opts = ... },

    -- lsp-zero
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

    { 'mbbill/undotree' },

    { 'stevearc/conform.nvim' },

    { 'tpope/vim-fugitive' },

    { 'nvim-tree/nvim-tree.lua' },
    { 'nvim-tree/nvim-web-devicons' },

    { 'nvim-lualine/lualine.nvim' },
    { 'numToStr/Comment.nvim',                      dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" } },

    { "kylechui/nvim-surround",                     version = "*",                                                   event = "VeryLazy" },
    { 'smoka7/hop.nvim',                            version = "*",                                                   opts = { keys = 'etovxqpdygfblzhckisuran' } },

    { 'goolord/alpha-nvim',                         dependencies = { "nvim-tree/nvim-web-devicons" },                event = "VimEnter" },

    { 'folke/zen-mode.nvim',                        opts = {} },
    { "ellisonleao/glow.nvim",                      config = true,                                                   cmd = "Glow" },
    { "phelipetls/vim-hugo" },

    {
        'nvimdev/template.nvim',
        cmd = { 'Template', 'TemProject' },
        config = function()
            require('template').setup({
                temp_dir = "~/.config/nvim/templates/",
            })
        end
    },
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

    { "tpope/vim-dadbod" },
    { "kristijanhusak/vim-dadbod-completion" },
    { "kristijanhusak/vim-dadbod-ui" },
}

local local_lazy = require("jonbooz.local.plugins")
for _, v in ipairs(local_lazy) do
    table.insert(plugins, v)
end

require("lazy").setup(plugins, opts)
