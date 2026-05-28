local telescope = require('telescope')
local actions = require("telescope.actions")

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-h>"] = actions.preview_scrolling_left,
                ["<C-l>"] = actions.preview_scrolling_right,
                ["<C-k>"] = actions.preview_scrolling_up,
                ["<C-j>"] = actions.preview_scrolling_down,
            },
            n = {
                ["<C-h>"] = actions.preview_scrolling_left,
                ["<C-l>"] = actions.preview_scrolling_right,
                ["<C-k>"] = actions.preview_scrolling_up,
                ["<C-j>"] = actions.preview_scrolling_down,
            },
        },
        vimgrep_arguments = {
            "rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--hidden",
			"--smart-case",
        }
    },
    pickers = {
        find_files = {
            theme = "dropdown",
            hidden = true,
            file_ignore_patterns = { "node_modules", ".git/" }
        }
    }
})
