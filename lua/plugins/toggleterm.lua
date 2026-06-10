return {
  "akinsho/toggleterm.nvim",
  keys = {
    { "<F13>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal", mode = { "n", "i", "t" } },
  },
  opts = {
    open_mapping = [[<F13>]],
    autochdir = true,
    hide_numbers = false,
  },
}
