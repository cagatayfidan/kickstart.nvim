-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require('nvim-tree').setup {
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = false, silent = true }),
    }
  end,
}
