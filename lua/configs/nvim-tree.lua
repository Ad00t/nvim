require("nvim-tree").setup({
    git = {
        enable = false
    },
    filters = {
        dotfiles = false,
        git_ignored = false,
    },
    view = {
        width = 30,
        side = "left",
    },
})
