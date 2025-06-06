local M = {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
} 

M.opts = function()
  opts = {
    compile = true,
    undercurl = true,          
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,       
    dimInactive = false,       
    terminalColors = true,     
    colors = {                 
      palette = {},
      theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    theme = "dragon",         
  }
end

M.config = function()
  vim.cmd.colorscheme "kanagawa-dragon"
end

return M 
