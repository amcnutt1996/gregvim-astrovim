return {
  "https://github.com/f-person/git-blame.nvim",
  event = "BufReadPre",
  opts = {
    -- Toggle blame on/off at startup (true = enabled by default)
    enabled = true,

    -- How long after the cursor stops moving before blame appears (ms)
    delay = 1000,

    -- Where the virtual text appears: "eol" (end of line) or "right_align"
    virtual_text_column = nil,

    -- The message shown when the line has not been committed yet
    message_when_not_committed = "  Not committed yet",

    -- Template for blame text — available tokens:
    --   <author>  <author-mail>  <author-time>  <author-tz>
    --   <committer>  <committer-mail>  <committer-time>  <committer-tz>
    --   <summary>  <commit-short>  <commit>
    message_template = "  <author> • <author-time> • <summary>",

    -- Date format (strftime syntax)
    date_format = "%Y-%m-%d",

    -- Highlight group used to color the virtual text
    highlight_group = "Comment",

    -- Set to true to ignore whitespace-only changes in blame
    ignore_whitespace = false,

    -- Show blame only in these filetypes; empty table = show in all filetypes
    -- Example: { "lua", "python", "rust" }
    allowed_filetypes = {},
  },
  config = function(_, opts)
    require("gitblame").setup(opts)

    -- Keymap to toggle blame on/off: <leader>gb
    -- Change the lhs string below to rebind it
    vim.keymap.set("n", "<leader>gb", "<cmd>GitBlameToggle<CR>", { desc = "Toggle git blame" })

    -- Optional extra commands available (no default keymaps set):
    --   :GitBlameEnable          turn on
    --   :GitBlameDisable         turn off
    --   :GitBlameToggle          flip current state
    --   :GitBlameCopySHA         copy commit SHA to clipboard
    --   :GitBlameCopyCommitURL   copy commit URL to clipboard (needs remote)
    --   :GitBlameOpenCommitURL   open commit URL in browser  (needs remote)
  end,
}
