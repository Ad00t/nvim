return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }, 
        config = function()
            require "configs.nvim-tree"
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lspconfig")
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },

    {
        "goolord/alpha-nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        event = "VimEnter",
        config = function()
            require("configs.alpha")
        end,
    },

    {
        "zeioth/garbage-day.nvim",
        event = "VeryLazy",
        opts = {}
    },

    { 
        "nvim-telescope/telescope.nvim",
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },
        config = function()
            require("configs.telescope")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("configs.treesitter")
        end
    },
}
