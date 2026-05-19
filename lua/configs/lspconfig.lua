require("nvchad.configs.lspconfig").defaults()

local servers = {
    "lua_ls",
    "clangd",
    "pyright",
    "ts_ls",
    "html",
    "cssls",
    "cmake",
}

for _, server in ipairs(servers) do
    vim.lsp.config(server, {})
end

vim.lsp.enable(servers)

vim.diagnostic.config({
    virtual_text = false,
})
