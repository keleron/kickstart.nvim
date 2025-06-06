return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  -- dependencies = { 'nvim-tree/nvim-web-devicons' },
  -- or if using mini.icons/mini.nvim
  dependencies = { 'echasnovski/mini.icons' },

  opts = {
    keymaps = {
      builtin = { true },
    },
  },
  config = function(_, _)
    local fzf = require 'fzf-lua'

    vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'fzf [F]ind [F]iles' })
    vim.keymap.set('n', '<leader><leader>', fzf.buffers, { desc = 'fzf [F]ind [B]uffer' })
    vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = 'fzf [S]earch [G]rep' })
    vim.keymap.set('n', '<leader>fw', fzf.grep_cword, { desc = 'fzf [S]earch [W]ord' })
    vim.keymap.set('n', '<leader>fh', fzf.helptags, { desc = 'fzf [S]earch [H]elp' })
    vim.keymap.set('n', '<leader>fk', fzf.keymaps, { desc = 'fzf [S]earch [K]eymaps' })
    vim.keymap.set('n', '<leader>fb', fzf.builtin, { desc = 'fzf [S]earch [B]uiltin' })

    vim.keymap.set('n', '<leader>fn', function()
      fzf.files { cwd = vim.fn.stdpath 'config' }
    end, { desc = 'FZF Find Files in Neovim Config' })

    local project = require 'project_nvim'

    vim.keymap.set('n', '<leader>fp', function()
      local projects = project.get_recent_projects()
      if #projects == 0 then
        print 'No projects found.'
        return
      end
      fzf.fzf_exec(projects, {
        prompt = 'Projects> ',
        actions = {
          ['default'] = function(selected)
            vim.cmd('cd ' .. selected[1]) -- Change to the selected project's root directory
            print('Switched to project: ' .. selected[1])
            fzf.files()
          end,
        },
      })
    end, { desc = 'Switch Projects with FZF' })
  end,
}
