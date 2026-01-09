return {
	-- "folke/tokyonight.nvim",
	-- lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- priority = 1000, -- make sure to load this before all the other start plugins
	-- config = function()
	--    require("tokyonight").setup({
	--      transparent = true,
	--    })
	-- 	vim.cmd([[colorscheme tokyonight-night]])
	-- end,

  "wtfox/jellybeans.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("jellybeans").setup({
      transparent = true,
      flat_ui = false,
    })
    vim.cmd("colorscheme jellybeans")
  end,
}
