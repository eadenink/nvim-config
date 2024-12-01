vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>pgf', builtin.git_files, { desc = 'Find files within git' })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Search for the string within working dir' })
vim.keymap.set('n', '<leader>pw', builtin.grep_string, { desc = 'Search for the word under the cursor within working dir' })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
