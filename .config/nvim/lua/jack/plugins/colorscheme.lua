return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      color_overrides = {
        mocha = {
          base = "#15151e",
        },
      },
      styles = {
        comments = {},
        conditionals = {},
      },
    })
    vim.cmd("colorscheme catppuccin")
  end,
}
