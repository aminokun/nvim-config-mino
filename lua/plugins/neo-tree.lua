local M = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
}
M.opts = function()
  opts = {
    filesystem = {
      filtered_items = {
         visible = true,
         show_hidden_count = true,
         hide_dotfiles = false,
         hide_gitignored = true,
         hide_by_name = {
            '.git',
            '.DS_Store',
            'thumbs.db',
         },
        never_show = {},
      },
    },
  }
end

M.config = function()
  vim.keymap.set('n', '<leader>ee', ':Neotree  filesystem reveal position=left<CR>', {})
  vim.keymap.set('n', '<leader>ef', ':Neotree  filesystem reveal position=float<CR>', {})
end

return M
