local nmap = require("jonbooz.utils.maps").nmap

vim.opt.backspace = "indent,eol,start"
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.ignorecase = false
vim.opt.smartcase = true

vim.opt.scrolloff = 6

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.number = true

vim.opt.updatetime = 50

vim.opt.signcolumn = "yes"

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.spell = true
vim.opt.spelllang = "en_us"

vim.opt.expandtab = true

vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"
vim.opt.undofile = true

vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"

nmap("<Leader>r", "<cmd>set relativenumber!<cr>")
