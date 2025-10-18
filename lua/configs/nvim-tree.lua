require("nvim-tree").setup({
    git = {
        enable = false
    },
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
