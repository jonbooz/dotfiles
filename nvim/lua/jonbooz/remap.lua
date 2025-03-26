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

-- strip whitespace
-- nmap("<leader>W", ":%s/\s\+$//<cr>:let @/=''<CR>")

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

nmap("<leader>ce", ":Copilot enable<cr>")
nmap("<leader>cd", ":Copilot disable<cr>")

--[[
nmap("<leader>sp", ":norm mm[s1z=`m<cr>", opts)

nmap("<leader>w", ":w!<cr>", opts)
nmap("n", "nzzzv", opts)
nmap("N", "Nzzzv", opts)
nmap("J", "mzJ`z", opts)
nmap("<C-d>", "<C-d>zz", opts)
nmap("<C-u>", "<C-u>zz", opts)

nmap("<leader><Enter>", ":noh<cr>", opts)

vmap("J", ":m '>+1<CR>gv=gv", opts)
vmap("K", ":m '<-2<CR>gv=gv", opts)

nmap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")
vmap("<leader>y", "\"+y")

vmap("<leader>p", "\"_dP", opts)
vmap("<leader>d", "\"_d", opts)
nmap("<leader>d", "\"_d", opts)

nmap("Q", "<nop")

nmap("<leader>f", function() vim.lsp.buf.format() end)

nmap("<C-k>", "<cmd>cnext<CR>zz")
nmap("<C-j>", "<cmd>cprev<CR>zz")

nmap("<leader>h", "<C-w>h")
nmap("<leader>j", "<C-w>j")
nmap("<leader>k", "<C-w>k")
nmap("<leader>l", "<C-w>l")


nmap("<leader><leader>s", ":source %<CR>")

nmap("<leader>+", ":vertical resize +5<CR>", { silent = true })
nmap("<leader>-", ":vertical resize -5<CR>", { silent = true })

]]

--nmap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
