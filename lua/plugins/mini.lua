-- TODO: instalar mini
return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.basics').setup()
    require('mini.ai').setup()
    require('mini.surround').setup()
    require('mini.trailspace').setup()
    require('mini.pairs').setup()
    require('mini.statusline').setup()
  end,
}
