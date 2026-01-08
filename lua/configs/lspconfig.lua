require("nvchad.configs.lspconfig").defaults()

vim.lsp.config('clangd', {
    cmd={ 
        'clangd', 
        '--query-driver=C:\\PROGRA~1\\W64DEV~1\\bin\\cc.exe,C:\\PROGRA~1\\W64DEV~1\\bin\\C__~1.EXE', 
        '--background-index',
        '--clang-tidy',
    }
})
vim.diagnostic.config({ virtual_text = false })

local servers = { "lua_ls", "cmake", "html", "cssls", "clangd", "pyright", "tsserver" }
vim.lsp.enable(servers)

