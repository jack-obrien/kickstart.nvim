vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'

return {
  {
    'rmagatti/auto-session',
    lazy = false,
    dependencies = {
      'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
    },

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      --log_level = 'debug',
      auto_restore_last_session = true,
      auto_session_enable_last_session = true,
      cwd_change_handling = true,
      post_restore_cmds = { -- require open nvim-tree on restore session
        function()
          require('custom.plugins.barbar-tree-offset').toggle()
        end,
      },
    },
  },
}
