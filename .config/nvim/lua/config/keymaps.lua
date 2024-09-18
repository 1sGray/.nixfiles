vim.g.mapleader = " "
-- Telescope Keymapping
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Mini.files keymapping
vim.keymap.set("n", "<leader>f", "<CMD>lua MiniFiles.open()<CR>", { desc = "Open parent directory" })
