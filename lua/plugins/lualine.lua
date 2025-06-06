local M = {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}


M.opts = function()
   return {
      options = {
        theme = 'horizon',
      }
    }
end

return M
