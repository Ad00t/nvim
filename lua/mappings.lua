require "nvchad.mappings"
local builtin = require('telescope.builtin')
local ss = require("smart-splits")

local map = vim.keymap.set

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap=true, silent=true })

map('n', '<leader>ff', function()
  builtin.find_files({ cwd = vim.fn.getcwd() })
end, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
map('n', '<leader>fr', builtin.lsp_references, { desc = 'Telescope LSP references' })

map("n", "K", function() vim.lsp.buf.hover({ border = "rounded" }) end, { desc = "LSP hover information" })

map("n", "<C-S-Left>", function() require("nvchad.tabufline").move_buf(-1) end, { desc = "move buffer left" })
map("n", "<C-S-Right>", function() require("nvchad.tabufline").move_buf(1) end, { desc = "move buffer right" })

map("n", "<A-h>", ss.resize_left, { desc = 'SmartSplit resize left' })
map("n", "<A-j>", ss.resize_down, { desc = 'SmartSplit resize left' })
map("n", "<A-k>", ss.resize_up, { desc = 'SmartSplit resize left' })
map("n", "<A-l>", ss.resize_right, { desc = 'SmartSplit resize left' })

map("n", "<C-h>", ss.move_cursor_left, { desc = 'SmartSplit move left' })
map("n", "<C-j>", ss.move_cursor_down, { desc = 'SmartSplit move down' })
map("n", "<C-k>", ss.move_cursor_up, { desc = 'SmartSplit move up' })
map("n", "<C-l>", ss.move_cursor_right, { desc = 'SmartSplit move right' })

map("n", "<leader><leader>h", ss.swap_buf_left, { desc = 'SmartSplit swap buf left' })
map("n", "<leader><leader>j", ss.swap_buf_down, { desc = 'SmartSplit swap buf down' })
map("n", "<leader><leader>k", ss.swap_buf_up, { desc = 'SmartSplit swap buf up' })
map("n", "<leader><leader>l", ss.swap_buf_right, { desc = 'SmartSplit swap buf right' })
