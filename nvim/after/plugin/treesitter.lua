local local_trees = require("jonbooz.local.treesitterlang")

local ensure_installed = {
    "javascript",
    "typescript",
    "json",
    "html",
    "css",
    "scss",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "go",
    "markdown",
    "markdown_inline",
    "elixir",
    "eex",
    "heex",
    "bash",
}

for _, v in ipairs(local_trees) do
    table.insert(ensure_installed, v)
end

require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = ensure_installed,

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (or "all")
    ignore_install = {},

    highlight = {
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}
