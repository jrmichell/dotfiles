return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    local lualine = require("lualine")

    local colors = {
      rosewater = "#f5e0dc",
      flamingo = "#f2cdcd",
      pink = "#f5c2e7",
      violet = "#ff61ef",
      red = "#ff4a4a",
      maroon = "#eba0ac",
      peach = "#fab387",
      yellow = "#ffda7b",
      green = "#3effdc",
      teal = "#94e2d5",
      sky = "#89dceb",
      sapphire = "#74c7ec",
      blue = "#65d1ff",
      lavender = "#b4befe",
      text = "#cdd6f4",
      subtext1 = "#bac2de",
      subtext0 = "#a6adc8",
      overlay2 = "#9399b2",
      overlay1 = "#7f849c",
      overlay0 = "#6c7086",
      surface2 = "#585b70",
      surface1 = "#45475a",
      surface0 = "#313244",
      base = "#15151e",
      mantle = "#181825",
      crust = "#11111b",
      none = "none",
    }

    local catppuccin = {
      normal = {
        a = { bg = colors.blue, fg = colors.mantle, gui = "bold" },
        b = { bg = colors.surface0, fg = colors.blue },
        c = { bg = colors.none, fg = colors.text },
      },

      insert = {
        a = { bg = colors.green, fg = colors.base, gui = "bold" },
        b = { bg = colors.surface0, fg = colors.green },
      },

      terminal = {
        a = { bg = colors.green, fg = colors.base, gui = "bold" },
        b = { bg = colors.surface0, fg = colors.green },
      },

      command = {
        a = { bg = colors.peach, fg = colors.base, gui = "bold" },
        b = { bg = colors.surface0, fg = colors.peach },
      },

      visual = {
        a = { bg = colors.violet, fg = colors.base, gui = "bold" },
        b = { bg = colors.surface0, fg = colors.violet },
      },

      replace = {
        a = { bg = colors.red, fg = colors.base, gui = "bold" },
        b = { bg = colors.surface0, fg = colors.red },
      },

      inactive = {
        a = { bg = colors.none, fg = colors.blue },
        b = { bg = colors.none, fg = colors.surface1, gui = "bold" },
        c = { bg = colors.none, fg = colors.overlay0 },
      },
    }

    vim.cmd([[highlight StatusLine guibg=none ctermbg=none]])
    vim.cmd([[highlight StatusLineNC guibg=none ctermbg=none]])

    lualine.setup({
      options = {
        theme = "auto",
        component_separators = { left = "", right = "|" },
        section_separators = { left = "", right = "" },
      },
      sections = {
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
      },
    })
  end,
}
