vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })

vim.keymap.set('t', '<C-Left>', '<C-\\><C-N><C-w>h', {})
vim.keymap.set('t', '<C-Down>', '<C-\\><C-N><C-w>j', {})
vim.keymap.set('t', '<C-Up>', '<C-\\><C-N><C-w>k', {})
vim.keymap.set('t', '<C-Right>', '<C-\\><C-N><C-w>l', {})

vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', { desc = 'Close current window' })
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save File' })
vim.keymap.set('n', '<leader>e', '<cmd>Oil --float<CR>', { desc = '[E]ditor' })

vim.keymap.set('n', 'gl', function()
  vim.diagnostic.open_float()
end, { desc = '[D]iagnostics' })

vim.keymap.set('n', '<leader>cf', function()
  require('conform').format()
end, { desc = '[F]ormat' })
