local M = {}

-- Open the nvim tree without focusing it
M.open_nvim_tree_no_focus = function()
  local nvim_tree = require 'nvim-tree.api'
  local bufferline_api = require 'bufferline.api'

  if not nvim_tree.tree.is_visible() then
    nvim_tree.tree.toggle { focus = false }
    bufferline_api.set_offset(31, 'File Explorer')
  end
end

return M -- This allows other files to import the function
