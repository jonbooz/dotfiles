local nmap = require("jonbooz.utils.maps").nmap

require('zen-mode').setup({
    window = {
        width = 80
    }
})

nmap('<leader>z', ":ZenMode<cr>")
