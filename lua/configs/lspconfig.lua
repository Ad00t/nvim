require("nvchad.configs.lspconfig").defaults()

local servers = require("configs.servers")

for _, server in ipairs(servers) do
    vim.lsp.config(server, {})
end

vim.lsp.enable(servers)

vim.diagnostic.config({
    virtual_text = false,
})

-- Re-attach LSP servers after sleep/wake kills their processes
vim.api.nvim_create_autocmd("FocusGained", {
    callback = function()
        vim.defer_fn(function()
            for _, buf in ipairs(vim.api.nvim_list_bufs()) do
                if vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buflisted then
                    local ft = vim.bo[buf].filetype
                    if ft ~= "" and #vim.lsp.get_clients({ bufnr = buf }) == 0 then
                        vim.api.nvim_exec_autocmds("FileType", { buffer = buf })
                    end
                end
            end
        end, 500)
    end,
})
