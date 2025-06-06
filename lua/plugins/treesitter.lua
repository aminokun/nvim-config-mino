local M = {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
} 

M.config = function()
  local config = require("nvim-treesitter.configs")
  config.setup({
    ensure_installed = {"lua", "typescript", "javascript", "tsx", "python", "c_sharp", "c", "css", "html", "java", "rust", "yaml" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  })
end

return M
