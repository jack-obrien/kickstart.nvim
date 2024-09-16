local M = {}

-- Define your custom function
M.toggle = function()
  local nvim_tree = require 'nvim-tree.api'
  local bufferline_api = require 'bufferline.api'

  if nvim_tree.tree.is_visible() then
    nvim_tree.tree.toggle()
    bufferline_api.set_offset(0)
  else
    nvim_tree.tree.toggle { focus = false }
    bufferline_api.set_offset(31, 'File Explorer')
  end
end

return M -- This allows other files to import the function
