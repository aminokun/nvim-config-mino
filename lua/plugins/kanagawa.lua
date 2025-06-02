return {
-- Kanagawa colorscheme
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    compile = true,
    undercurl = true,          -- enable undercurls
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
  },
  config = function()
    vim.cmd.colorscheme "kanagawa-dragon"
  end,
} 
