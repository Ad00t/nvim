local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME, -- so it sees Neovim's runtime
          -- or use: "${3rd}/luv/library", "${3rd}/busted/library"
        },
      },
    },
  },
})
vim.lsp.enable("lua_ls")

local servers = { "html", "cssls", "clangd", "pyright", "ts_ls" }

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

vim.diagnostic.config({ virtual_text = false })
