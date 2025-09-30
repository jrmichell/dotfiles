return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({})

    local suggestion = require("supermaven-nvim.completion_preview")
    vim.keymap.set("n", "<leader>ta", function()
      if suggestion.disable_inline_completion then
        suggestion.disable_inline_completion = false
        print("Enabled Supermaven")
      else
        suggestion.disable_inline_completion = true
        print("Disabled Supermaven")
      end
    end, { desc = "[T]oggle [A]I autocompletion" })
  end,
}
