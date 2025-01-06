return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>pgf', builtin.git_files, { desc = 'Find files within git' })
    vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Search for the string within working dir' })
    vim.keymap.set('n', '<leader>pw', builtin.grep_string, { desc = 'Search for the word under the cursor within working dir' })
  end
}
