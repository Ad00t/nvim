local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

local servers = { "lua_ls", "html", "cssls", "clangd", "pyright", "ts_ls" }

for _, server in ipairs(servers) do
    vim.lsp.config(server, {
        on_attach = on_attach,
        capabilities = capabilities,
    })
    vim.lsp.enable(server)
end

for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
    vim.api.nvim_set_hl(0, group, {})
end

vim.api.nvim_set_keymap('n', '<space>d', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap=true, silent=true })
