local nmap = require("jonbooz.utils.maps").nmap

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
    actions = {
        open_file = {
            quit_on_open = false,
        },
    },
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
        side = 'left',
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})

local api = require("nvim-tree.api")

nmap('<leader>l', api.tree.toggle)
nmap('<leader>nf', function() api.tree.toggle({ find_file = true, focus = true }) end)
