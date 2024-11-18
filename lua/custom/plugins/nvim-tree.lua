return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = true,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    sync_root_with_cwd = true,
    renderer = {
      add_trailing = true
    },
  },
}
