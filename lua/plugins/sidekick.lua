return {
  "https://github.com/folke/sidekick.nvim",
  event = "VeryLazy",
  opts = {
    -- Next Edit Suggestions powered by Copilot LSP
    nes = {
      enabled = true,
    },
    -- Copilot LSP status notifications
    copilot = {
      status = {
        enabled = true,
        level = vim.log.levels.WARN,
      },
    },
    -- AI CLI tool integration
    cli = {
      win = {
        layout = "right",
      },
      tools = {
        claude = {},   -- Claude Code CLI (`claude` must be in PATH)
        copilot = {},  -- Copilot CLI (`gh copilot` or `copilot` must be in PATH)
      },
    },
  },
  config = function(_, opts)
    -- copilot-language-server is required for NES (Next Edit Suggestions)
    -- Install via mason: :MasonInstall copilot-language-server
    -- Then sign in with: :LspCopilotSignIn
    vim.lsp.enable("copilot-language-server")
    require("sidekick").setup(opts)
  end,
  keys = {
    { "<leader>\\",  group = "AI CLI" },
    { "<leader>\\c", function() require("sidekick.cli").toggle({ name = "claude", focus = true }) end, desc = "Claude Code" },
    { "<leader>\\C", function() require("sidekick.cli").toggle({ name = "copilot", focus = true }) end, desc = "Copilot CLI" },
    { "<leader>\\l", function() require("sidekick.cli").toggle() end, desc = "Last used" },
  },
}
