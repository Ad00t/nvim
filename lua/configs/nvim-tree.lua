require("nvim-tree").setup({
  filters = {
    dotfiles = false,
    git_ignored = false,
    custom = {},
  },
  view = {
    width = 30,
    side = "left",
  },
})
