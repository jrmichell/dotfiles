return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    local lualine = require("lualine")

    vim.cmd([[highlight StatusLine guibg=none ctermbg=none]])
    vim.cmd([[highlight StatusLineNC guibg=none ctermbg=none]])

    lualine.setup({
      options = {
        theme = "auto",
        component_separators = { left = "", right = "|" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          {

            "mode",
            color = { gui = "bold" },
          },
        },
        lualine_b = {
          { "branch", icon = "" },
          "diff",
          "diagnostics",
        },
        lualine_c = {
          { "filename", path = 1 },
        },
        lualine_x = {
          { "filetype" },
        },
        lualine_z = {
          {
            "location",
            color = { gui = "bold" },
          },
        },
      },
    })
  end,
}
