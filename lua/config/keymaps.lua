vim.keymap.set('n', '<leader>e', '<cmd>Oil --float<CR>', {desc='[E]ditor'})
vim.keymap.set('n', 'gl', function ()
    vim.diagnostic.open_float()
end, {desc='[D]iagnostics'})
