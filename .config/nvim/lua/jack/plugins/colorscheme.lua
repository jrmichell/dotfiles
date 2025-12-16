return {
  -- "ellisonleao/gruvbox.nvim",
  -- priority = 1000,
  -- config = function()
  --   require("gruvbox").setup({
  --     bold = false,
  --     inverse = false,
  --     overrides = {
  --       FoldColumn = { bg = "#1d2021" },
  --       SignColumn = { bg = "#1d2021" },
  --       BufferLineFill = { bg = "#1d2021" },
  --       BufferLineBackground = { bg = "#1d2021", fg = "#a89984" },
  --       BufferLineBufferSelected = { bg = "#1d2021", fg = "#ebdbb2", bold = true },
  --       BufferLineBufferVisible = { bg = "#1d2021", fg = "#a89984" },
  --     },
  --     contrast = "hard",
  --   })
  --   vim.cmd("colorscheme gruvbox")
  -- end,

  -- "wtfox/jellybeans.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   require("jellybeans").setup({
  --     flat_ui = false,
  --   })
  --   vim.cmd("colorscheme jellybeans")
  -- end,

  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      color_overrides = {
        mocha = {
          base = "#15151e",
        },
      },
      styles = {
        comments = {},
      },
    })
    vim.cmd("colorscheme catppuccin")
  end,

  -- "folke/tokyonight.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   require("tokyonight").setup({
  --     style = "night",
  --     transparent = true,
  --     styles = {
  --       comments = { italic = false },
  --       keywords = { italic = false },
  --     },
  --     lualine_bold = true,
  --   })
  --   vim.cmd("colorscheme tokyonight")
  -- end,
}
