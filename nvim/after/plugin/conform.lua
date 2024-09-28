local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        lua = { "stylua" },
        go = { "goimports", "gofmt" },
        javascript = { "eslint", { "prettierd", "prettier" } },
        typescript = { { "eslint" }, { "prettierd", "prettier" } },
        javascriptreact = { { "eslint" }, { "prettierd", "prettier" } },
        typescriptreact = { { "eslint" }, { "prettierd", "prettier" } },
        elixir = { "mix" },
        ruby = { "standardrb" },
        ["_"] = { "trim_whitespace" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
})
