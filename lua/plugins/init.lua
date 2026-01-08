return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    -- {
    --     "nvim-tree/nvim-tree.lua",
    --     dependencies = { "nvim-tree/nvim-web-devicons" }, 
    --     config = function()
    --         require "configs.nvim-tree"
    --     end
    -- },

    -- { 
    --     "nvim-telescope/telescope.nvim",
    --     dependencies = {
    --         'nvim-lua/plenary.nvim',
    --         { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    --     },
    --     config = function()
    --         require "configs.telescope"
    --     end,
    -- },

    -- {
    --     "mason-org/mason-lspconfig.nvim",
    --     opts = {
    --         ensure_installed = {
    --             "lua_ls",
    --             "clangd",
    --             "html",
    --             "cssls",
    --             "pyright",
    --             "tsserver",
    --         },
    --         automatic_installation = true,
    --     },
    --     dependencies = {
    --         { "mason-org/mason.nvim", opts={} }
    --     }
    -- },

    -- {
    --     "nvimtools/none-ls.nvim",
    --     config = function()
    --         require "configs.none-ls"
    --     end,
    -- },

    -- {
    --     "nvim-treesitter/nvim-treesitter",
    --     opts = {
    --         ensure_installed = {
    --             "vim", "lua", "vimdoc", "html", "css", "c", "python", "javascript", "typescript", "cpp", "cmake"
    --         },
    --         sync_install = false,
    --         auto_install = true,
    --         highlight = {
    --             enable = true,
    --         },
    --     },
    -- },
}
