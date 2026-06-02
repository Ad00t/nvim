require("mason").setup()

require("mason-lspconfig").setup({
    automatic_installation = true,
    automatic_enable = true,
    ensure_installed = require("configs.servers"),
})
