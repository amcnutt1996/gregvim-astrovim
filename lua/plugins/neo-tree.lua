return {
  "https://github.com/nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_ignored = false,
        hide_hidden = false,
        never_show = {
          ".DS_Store",
        },
      },
    },
  },
}
