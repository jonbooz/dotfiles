return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "K", ":$<cr>", desc = "Bottom of buffer" },
            { "gh", function() return vim.lsp.buf.hover() end, desc = "Hover" },
          },
        },
      },
    },
  },
}
