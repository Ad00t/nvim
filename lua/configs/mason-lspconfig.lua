require("mason").setup()

require("mason-lspconfig").setup({
    automatic_installation = true,
    automatic_enable = true,
    ensure_installed = {
        "lua_ls",
        "clangd",
        "pyright",
        "ts_ls",
        "html",
        "cssls",
        "cmake",
    },
})
