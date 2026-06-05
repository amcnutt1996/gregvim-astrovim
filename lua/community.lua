-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- Python community plugins
  { import = "astrocommunity.pack.python.base" }, -- python + toml Treesitter, debugpy, venv-selector, neotest-python
  -- { import = "astrocommunity.pack.python.ruff" }, -- language server for linting and formatting

  -- IOS/MACOS Swift Programming plugins
  { import = "astrocommunity.pack.swift" },
  { import = "astrocommunity.programming-language-support.XBase" },

  -- MINIMAP PLUGIN
  -- { import = "astrocommunity.split-and-window.minimap-vim" },
  { import = "astrocommunity.split-and-window.neominimap-nvim" },

  -- import/override with your plugins folder
}
