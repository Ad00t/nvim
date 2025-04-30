return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "clangd", "html", "cssls" },
    }
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "clangd", "html", "cssls" },
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc", "html", "css", "c", "python", "javascript", "typescript", "cpp", "cmake"
  		},
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
      },
  	},
  },
}
