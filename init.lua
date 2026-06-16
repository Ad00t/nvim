vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)
vim.opt.conceallevel = 0 

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
    },

    { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
    require "mappings"
end)

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        local first_arg = vim.fn.argv(0)
        if first_arg and vim.fn.isdirectory(first_arg) == 1 then
          local buf = vim.api.nvim_get_current_buf()
          vim.cmd("cd " .. first_arg)
          vim.cmd("Alpha")
          vim.api.nvim_buf_delete(buf, { force = true })
        end
        vim.schedule(function()
            require("nvim-tree.api").tree.open()
            vim.cmd("wincmd p")
        end)
    end,
})

vim.api.nvim_create_autocmd("WinResized", {
    callback = function()
        for _, win in ipairs(vim.api.nvim_list_wins()) do
            local buf = vim.api.nvim_win_get_buf(win)
            if vim.bo[buf].filetype == "NvimTree" then
                local w = vim.api.nvim_win_get_width(win)
                require("nvim-tree.view").resize(w)
                return
            end
        end
    end,
})
