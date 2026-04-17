-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "onedark",
    transparency = "true",
}

M.plugins = "custom.plugins"

M.ui = {
    telescope = {
        style = "bordered", -- Options: "bordered" or "borderless"
    },

    cmp = {
        icons_left = false, -- only for non-atom styles!
        style = "default", -- default/flat_light/flat_dark/atom/atom_colored
        abbr_maxwidth = 60,
        -- for tailwind, css lsp etc
        format_colors = { lsp = true, icon = "󱓻" },
    },

    statusline = {
        enabled = true,
        theme = "minimal", -- default/vscode/vscode_colored/minimal
        -- default/round/block/arrow separators work only for default statusline theme
        -- round and block will work for minimal theme only
        separator_style = "round",
        order = nil,
        modules = nil,
    },

    tabufline = {
        enabled = true,
        lazyload = false,
        treeOffsetFt = "NvimTree",
        order = { "treeOffset", "buffers", "tabs", "btns" },
        modules = nil,
        bufwidth = 21,
    }, 

    term = {
        startinsert = true,
        base46_colors = true,
        winopts = { number = false, relativenumber = false },
        sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
        float = {
            relative = "editor",
            row = 0.3,
            col = 0.25,
            width = 0.5,
            height = 0.4,
            border = "single",
        },
    },

    lsp = { signature = true },

    colorify = {
        enabled = true,
        mode = "virtual", -- fg, bg, virtual
        virt_text = "󱓻 ",
        highlight = { hex = true, lspvars = true },
    },

    cheatsheet = {
        theme = "grid", -- simple/grid
    }
}

return M
