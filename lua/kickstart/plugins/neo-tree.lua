-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>e', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<leader>e'] = 'close_window',
        },
      },
    },
    default_component_configs = {
      icon = {
        -- folder_closed = '[+]',
        -- folder_open = '[-]',
        default = '*',
      },
      git_status = {
        symbols = {
          -- Change type
          added = '✚', -- NOTE: you can set any of these to an empty string to not show them
          deleted = '✖',
          modified = 'M',
          renamed = 'R',
          -- Status type
          untracked = 'U',
          ignored = 'I',
          unstaged = 'U',
          staged = 'S',
          conflict = 'C',
        },
        align = 'right',
      },
    },
  },
}
