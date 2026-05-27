require("nvim-tree").setup({
    git = {
        enable = false
    },
    filters = {
        dotfiles = false,
        git_ignored = false,
    },
    filesystem_watchers = {
        enable = true,
        ignore_dirs = {
            "node_modules",
            ".git",
            "build",
            "dist",
        },
    },
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true,
    },
})
