-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

function Nmap(lhs, rhs, opt)
  vim.keymap.set("n", lhs, rhs, opt)
end

function Vmap(lhs, rhs, opt)
  vim.keymap.set("v", lhs, rhs, opt)
end

function Imap(lhs, rhs, opt)
  vim.keymap.set("i", lhs, rhs, opt)
end

function Cmap(lhs, rhs, opt)
  vim.keymap.set("c", lhs, rhs, opt)
end

function Tmap(lhs, rhs, opt)
  vim.keymap.set("t", lhs, rhs, opt)
end

-- Yank and Copy from cursor to end of line
Nmap("Y", "y$")

-- Visual Mode Tab Shift (doesn't leave visual mode)
Vmap("<", "<gv")
Vmap(">", ">gv")

-- When you forget to sudo.. really write the file
Cmap("w!!", "w !sudo tee % >/dev/null")

-- Uppercase the last typed word, use from insert mode
Imap("<C-u>", "<esc>mzgUiw`za")
Imap("<C-e>", "<C-o>A")

-- Easy File Type switching
Nmap("_md", ":set ft=markdown")
Nmap("_sh", ":set ft=zsh")
Nmap("_bash", ":set ft=bash")

-- Leader Commands
--

-- Copy to system clipboard (mac)
Vmap("<leader>c", '"*y')

-- select the just pasted text
Nmap("<leader>V", "V`]")

-- open and go to v/h split
Nmap("<leader>hs", "<C-w>s")
Nmap("<leader>vs", "<C-w>v")

-- toggle line numbers
Nmap("<leader>n", ":setlocal number!<cr>")

-- Terminal Mode
Nmap("<leader>`", ":terminal<cr>i")
Tmap("<C-`>", "<C-\\><C-n>")
Tmap("<Esc>", "<C-\\><C-n>")

-- Commands
Nmap("<leader>mp", ":!md2pdf %<cr><cr>")
Nmap("<leader>m", ":Telescope find_template type=insert<cr>")

-- Nmap("<leader><leader>s", ":source ~/.config/nvim/after/plugin/luasnip.lua")

Nmap("J", "H")
Nmap("K", "L")
