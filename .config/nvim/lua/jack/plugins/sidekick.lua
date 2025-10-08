return {
  "folke/sidekick.nvim",
  config = function()
    require("sidekick").setup({
      nes = {
        enabled = false,
      },
      cli = {
        mux = {
          backend = "tmux",
          enabled = true,
        },
        tools = {
          claude = { cmd = { "claude" }, url = "https://github.com/anthropics/claude-code" },
          opencode = {
            cmd = { "opencode" },
            -- HACK: https://github.com/sst/opencode/issues/445
            env = { OPENCODE_THEME = "system" },
            url = "https://github.com/sst/opencode",
          },
        },
        win = {
          split = {
            width = 80,
            height = 20,
          },
        },
      },
    })
  end,
  keys = {
    -- {
    --   "<tab>",
    --   function()
    --     -- if there is a next edit, jump to it, otherwise apply it if any
    --     if not require("sidekick").nes_jump_or_apply() then
    --       return "<Tab>" -- fallback to normal tab
    --     end
    --   end,
    --   expr = true,
    --   desc = "Goto/Apply Next Edit Suggestion",
    -- },
    {
      "<leader>aa",
      function()
        require("sidekick.cli").toggle()
      end,
      desc = "Sidekick Toggle CLI",
    },
    {
      "<leader>as",
      function()
        require("sidekick.cli").select()
      end,
      -- Or to select only installed tools:
      -- require("sidekick.cli").select({ filter = { installed = true } })
      desc = "Select CLI",
    },
    {
      "<leader>at",
      function()
        require("sidekick.cli").send({ msg = "{this}" })
      end,
      mode = { "x", "n" },
      desc = "Send This",
    },
    {
      "<leader>av",
      function()
        require("sidekick.cli").send({ msg = "{selection}" })
      end,
      mode = { "x" },
      desc = "Send Visual Selection",
    },
    {
      "<leader>ap",
      function()
        require("sidekick.cli").prompt()
      end,
      mode = { "n", "x" },
      desc = "Sidekick Select Prompt",
    },
    {
      "<c-.>",
      function()
        require("sidekick.cli").focus()
      end,
      mode = { "n", "x", "i", "t" },
      desc = "Sidekick Switch Focus",
    },
    {
      "<leader>ac",
      function()
        require("sidekick.cli").toggle({ name = "claude", focus = true })
      end,
      desc = "Sidekick Toggle Claude",
    },
    {
      "<leader>ao",
      function()
        require("sidekick.cli").toggle({ name = "opencode", focus = true })
      end,
      desc = "Sidekick Toggle Opencode",
    },
  },
}
