return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
   █████████  ███████████   ██████████   █████████  █████   █████ █████ ██████   ██████
  ███░░░░░███░░███░░░░░███ ░░███░░░░░█  ███░░░░░███░░███   ░░███ ░░███ ░░██████ ██████ 
 ███     ░░░  ░███    ░███  ░███  █ ░  ███     ░░░  ░███    ░███  ░███  ░███░█████░███ 
░███          ░██████████   ░██████   ░███          ░███    ░███  ░███  ░███░░███ ░███ 
░███    █████ ░███░░░░░███  ░███░░█   ░███    █████ ░░███   ███   ░███  ░███ ░░░  ░███ 
░░███  ░░███  ░███    ░███  ░███ ░   █░░███  ░░███   ░░░█████░    ░███  ░███      ░███ 
 ░░█████████  █████   █████ ██████████ ░░█████████     ░░███      █████ █████     █████
  ░░░░░░░░░  ░░░░░   ░░░░░ ░░░░░░░░░░   ░░░░░░░░░       ░░░      ░░░░░ ░░░░░     ░░░░░ 
      ]],
        keys = {
          { icon = "󰈞 ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = "󰈞 ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = "󱅄 ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = "󰦛 ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },

          -- Custom locations: feel free to change if you want.
          {
            icon = " ",
            key = "m",
            desc = "MD Notes Directory",
            action = function()
              vim.fn.chdir "/Users/gmcnutt/Library/Mobile Documents/com~apple~CloudDocs/Greg-2026/"
              vim.cmd "Neotree focus"
            end,
          },
          {
            icon = " ",
            key = "C",
            desc = "Cloud Drive",
            action = function()
              vim.fn.chdir "/Users/gmcnutt/Library/Mobile Documents/com~apple~CloudDocs/"
              vim.cmd "Neotree focus"
            end,
          },
          {
            icon = "󱆀 ",
            key = "s",
            desc = "Change Dir To School",
            action = function()
              vim.fn.chdir "/Users/gmcnutt/Library/Mobile Documents/com~apple~CloudDocs/School/"
              vim.cmd "Neotree focus"
            end,
          },
          -- end custom dashboard hotkeys/locations

          { icon = "󰩈 ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
--   opts = {
--     dashboard = {
--       preset = {
