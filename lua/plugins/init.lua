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
      ensure_installed = {
        "lua_ls",
        "clangd",
        "html",
        "cssls",
        "pyright",
        "mypy",
        "ruff",
        "black",
        "ts_ls",
      }
    }
  },

  {
    "williamboman/mason-lspconfig.nvim",
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      return require "configs.null-ls"
    end,
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
