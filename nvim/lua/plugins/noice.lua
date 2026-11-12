return {
  -- Neovide draws its own cmdline (ext_cmdline), which Noice can't coexist
  -- with, so only load Noice in terminal nvim.
  {
    "folke/noice.nvim",
    enabled = not vim.g.neovide,
  },
}
