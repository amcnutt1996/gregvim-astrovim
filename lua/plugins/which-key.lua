return {
  "folke/which-key.nvim",
  opts = {
    filter = function() return true end,
    sort = { "alphanum", "mod" },
    -- Can also sort with sort = {"desc", "alphanum"}
    -- available ones are: alphanum, desc, local, order, group, mod, manual, case
    triggers = {
      { "<auto>", mode = "nxso" },
      { "g", mode = { "n", "v" } },
      { "y", mode = { "n", "v" } }, -- you have "Yank" as y but not as a trigger group
      { "c", mode = { "n", "v" } }, -- Change
      { "d", mode = { "n", "v" } }, -- Delete
      { "v", mode = "n" }, -- Visual selections (viw, vap, etc.)
      { "r", mode = "n" }, -- Replace
      { "f", mode = { "n", "v" } }, -- Find char forward
      { "F", mode = { "n", "v" } }, -- Find char backward
      { "t", mode = { "n", "v" } }, -- Till char forward
      { "T", mode = { "n", "v" } }, -- Till char backward
      { "<c-r>", mode = "n" }, -- Redo / insert register
    },
  },
  config = function(_, opts)
    local wk = require "which-key"
    wk.setup(opts)

    wk.add {
      { "h", desc = "Move left" },
      { "j", desc = "Move down" },
      { "k", desc = "Move up" },
      { "l", desc = "Move right" },
      { "w", desc = "Next word" },
      { "W", desc = "Next WORD" },
      { "b", desc = "Prev word" },
      { "B", desc = "Prev WORD" },
      { "e", desc = "End of word" },
      { "E", desc = "End of WORD" },
      { "0", desc = "Start of line" },
      { "^", desc = "Start of line (non-ws)" },
      { "$", desc = "End of line" },
      { "%", desc = "Matching bracket" },
      { "gg", desc = "First line" },
      { "G", desc = "Last line" },
      { "u", desc = "Undo" },
      { "x", desc = "Delete char" },
      { "p", desc = "Paste after" },
      { "P", desc = "Paste before" },
      { "o", desc = "New line below" },
      { "O", desc = "New line above" },
      { "a", desc = "Append" },
      { "A", desc = "Append end of line" },
      { "i", desc = "Insert" },
      { "I", desc = "Insert start of line" },
    }
  end,
}
