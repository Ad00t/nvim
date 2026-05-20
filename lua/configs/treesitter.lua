local treesitter = require('nvim-treesitter') 

local parsers = { "vim", "proto", "lua", "vimdoc", "html", "css", "c", "python", "javascript", "typescript", "cpp", "cmake" }

treesitter.setup({
    ensure_installed = parsers,
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
    additional_vim_regex_highlighting = false,
})
