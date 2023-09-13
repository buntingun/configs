-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'm4xshen/hardtime.nvim',
    event = 'VeryLazy',
    opts = {}
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'christoomey/vim-tmux-navigator',
    lazy = false
  },
  {
    'lervag/vimtex'
  }
}
