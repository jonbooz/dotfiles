local nmap = require("jonbooz.utils.maps").nmap
local vmap = require("jonbooz.utils.maps").vmap

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Navigate by screen line
nmap("j", "gj")
nmap("k", "gk")
nmap("$", "g$")
nmap("0", "g0")
nmap("A", "g$a")

vmap("j", "gj")
vmap("k", "gk")
