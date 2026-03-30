local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.formatting.clang_format
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.lsp.buf.format({
                bufnr = bufnr,
                filter = function(c)
                    return c.name == "null-ls"
                end,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})
