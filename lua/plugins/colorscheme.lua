return {
  -- Kanagawa colorscheme
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
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
    build = ":KanagawaCompile", -- Use a string for build to allow lazy to handle it
  },

  -- Ashen colorscheme
  {
    "ficcdaf/ashen.nvim",
    lazy = true, -- Make sure lazy is true
    priority = 1000,
    opts = {
    },
  },

  --gruvbox colorscheme
{ 'datsfilipe/gruvbox.nvim' },

  -- catpuccin colorscheme 
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      background = { -- :h catppuccin-background
        light = "latte",
        dark = "mocha",
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = true,
        mini = true,
      },
    },
  },

  -- Set your default colorscheme here
  -- This will be loaded when Neovim starts
  {
    "ficcdaf/ashen.nvim", -- "rebelot/kanagawa.nvim", -- Or "ficcdaf/ashen.nvim", or "catppuccin/nvim" etc.
    -- Set `lazy = false` for the default colorscheme so it loads on startup
    lazy = false,
    priority = 1000,
    -- The config for the default colorscheme should be here
    -- It will automatically apply the colorscheme on startup
    config = function()
      vim.cmd("colorscheme ashen") 
    end,
  },
}
