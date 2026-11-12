-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.opt.relativenumber = true

-- Neovide (GUI) only; terminal nvim ignores this block
if vim.g.neovide then
  vim.o.guifont = "Hack Nerd Font Mono:h13"
  vim.g.neovide_input_macos_option_key_is_meta = "only_left"
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_scroll_animation_length = 0.15

  -- Start in ~/Documents/Notes when launched from the Dock/Finder/`open -a`.
  -- Neovide already swaps launchd's cwd of / for $HOME, so check for both.
  local cwd = vim.fn.getcwd()
  if cwd == "/" or cwd == vim.fn.expand("~") then
    vim.cmd.cd("~/Documents/Notes")
  end

  -- Standard macOS shortcuts
  vim.keymap.set("n", "<D-s>", "<cmd>w<cr>", { desc = "Save" })
  vim.keymap.set("v", "<D-c>", '"+y', { desc = "Copy" })
  vim.keymap.set({ "n", "v" }, "<D-v>", '"+P', { desc = "Paste" })
  vim.keymap.set({ "i", "c" }, "<D-v>", "<C-r>+", { desc = "Paste" })
  vim.keymap.set("t", "<D-v>", '<C-\\><C-n>"+Pi', { desc = "Paste" })
end
