local cmp = require "cmp"
local nmap = require("jonbooz.utils.maps").nmap

cmp.setup.filetype({ 'sql' }, {
  sources = {
    { name = 'vim-dadbod-completion' },
    { name = 'buffer' },
  },
})

nmap("<leader>db", ":DBUIToggle<CR>")
