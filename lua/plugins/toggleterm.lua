return {
  "akinsho/toggleterm.nvim",
  opts = {
    hide_numbers = false,
    autochdir = true,
    on_open = function(term)
      local ok, venv_selector = pcall(require, "venv-selector")
      if not ok then return end

      local venv_path = venv_selector.venv()
      if venv_path and venv_path ~= "" then
        vim.defer_fn(function() term:send("source " .. venv_path .. "/bin/activate") end, 100)
      end
    end,
  },
}
