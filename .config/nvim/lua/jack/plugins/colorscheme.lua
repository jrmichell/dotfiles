return {
  "wtfox/jellybeans.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("jellybeans").setup({
      flat_ui = false,
    })
    vim.cmd("colorscheme jellybeans")
  end,

  -- "catppuccin/nvim",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   require("catppuccin").setup({
  --     flavour = "macchiato",
  --     -- color_overrides = {
  --     --   mocha = {
  --     --     base = "#15151e",
  --     --   },
  --     -- },
  --     no_italic = true,
  --     styles = {
  --       comments = {},
  --       conditionals = {},
  --     },
  --   })
  --   vim.cmd("colorscheme catppuccin")
  -- end,

  -- "folke/tokyonight.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   require("tokyonight").setup({
  --     style = "night",
  --     styles = {
  --       comments = { italic = false },
  --       keywords = { italic = false },
  --     },
  --     lualine_bold = true,
  --   })
  --   vim.cmd("colorscheme tokyonight")
  -- end,
}
