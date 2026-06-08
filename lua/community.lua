-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- Neogen for auto documentation
  { import = "astrocommunity.editing-support.neogen" },

  -- Python community plugins
  { import = "astrocommunity.pack.python.base" }, -- python + toml Treesitter, debugpy, venv-selector, neotest-python
  -- { import = "astrocommunity.pack.python.ty" },
  -- { import = "astrocommunity.pack.python.basedpyright" },
  -- { import = "astrocommunity.pack.python.black" },
  { import = "astrocommunity.pack.python.ruff" }, -- language server for linting and formatting

  -- IOS/MACOS Swift Programming plugins
  { import = "astrocommunity.pack.swift" },
  { import = "astrocommunity.programming-language-support.XBase" },

  -- Rust Programming plugin
  { import = "astrocommunity.pack.rust" },

  -- import/override with your plugins folder
}
