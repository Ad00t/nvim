dofile(vim.g.base46_cache .. "syntax")
dofile(vim.g.base46_cache .. "treesitter")

local parsers = {
    "vim", "proto", "lua", "vimdoc", "query", "markdown", "markdown_inline",
    "html", "css", "c", "cpp", "python", "javascript", "typescript", "cmake", "yaml",
}

require("nvim-treesitter").install(parsers)

vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        pcall(vim.treesitter.start, args.buf)
    end,
})
