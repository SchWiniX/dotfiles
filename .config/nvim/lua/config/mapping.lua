--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

--nvim-tree
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true })

