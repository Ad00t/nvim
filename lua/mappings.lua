require "nvchad.mappings"
local builtin = require('telescope.builtin')

local map = vim.keymap.set 

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap=true, silent=true })

map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
map('n', '<leader>fr', builtin.lsp_references, { desc = 'Telescope LSP references' })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
