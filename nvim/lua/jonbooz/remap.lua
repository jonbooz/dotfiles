local nmap = require("jonbooz.utils.maps").nmap
local vmap = require("jonbooz.utils.maps").vmap
local imap = require("jonbooz.utils.maps").imap
local cmap = require("jonbooz.utils.maps").cmap
local tmap = require("jonbooz.utils.maps").tmap

-- Yank and Copy from cursor to end of line
nmap("Y", "y$")

-- Visual Mode Tab Shift (doesn't leave visual mode)
vmap("<", "<gv")
vmap(">", ">gv")

-- When you forget to sudo.. really write the file
cmap("w!!", "w !sudo tee % >/dev/null")

-- Uppercase the last typed word, use from insert mode
imap("<C-u>", "<esc>mzgUiw`za")
imap("<C-e>", "<C-o>A")

-- Easy File Type switching
nmap("_md", ":set ft=markdown")
nmap("_sh", ":set ft=zsh")
nmap("_bash", ":set ft=bash")

-- Leader Commands
--

-- Copy to system clipboard (mac)
vmap("<leader>c", "\"*y")

-- select the just pasted text
nmap("<leader>V", "V`]")

-- open and go to v/h split
nmap("<leader>hs", "<C-w>s<C-w>j")
nmap("<leader>vs", "<C-w>v<C-w>l")

-- toggle line numbers
nmap("<leader>n", ":setlocal number!<cr>")

nmap("<leader>/", ":set hlsearch!<cr>")

-- Terminal Mode
nmap("<leader>`", ":terminal<cr>i")
tmap("<C-`>", "<C-\\><C-n>")
tmap("<Esc>", "<C-\\><C-n>")

-- Commands
nmap("<leader>mp", ":!md2pdf %<cr><cr>")
nmap("<leader>m", ":Telescope find_template type=insert<cr>")
nmap("<leader>g", ":Glow %<cr>")

nmap("<leader><leader>s", ":source ~/.config/nvim/after/plugin/luasnip.lua")
