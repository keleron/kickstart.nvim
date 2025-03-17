return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      custom_highlights = function()
        return { CursorLine = { bg = '#000000' } }
      end,
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
