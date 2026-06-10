return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  lazy = true,
  event = {
    -- need to put in your specific obsidian folder in both of these
    "BufReadPre " .. vim.fn.expand "/Users/gmcnutt/Library/Mobile Documents/com~apple~CloudDocs/Greg-2026" .. "/*.md",
    "BufNewFile " .. vim.fn.expand "/Users/gmcnutt/Library/Mobile Documents/com~apple~CloudDocs/Greg-2026" .. "/*.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        -- have to update this to your specific folder for obsidian
        name = "Greg-2026",
        path = "/Users/gmcnutt/Library/Mobile Documents/com~apple~CloudDocs/Greg-2026",
      },
    },
    attachments = {
      img_folder = "images",
      --generates markdown link inserted into note
      img_text_func = function(client, path)
        path = client:vault_relative_path(path) or path
        return string.format("![[%s]", path.name)
      end,
    },
    picker = {
      name = "snacks.picker",
    },
  },
}
