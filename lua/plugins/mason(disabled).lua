-- Customize Mason
---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",

        -- install formatters
        "stylua",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
        -- ✓ codelldb
        -- ✓ debugpy
        -- ✓ docker-compose-language-service docker_compose_language_service
        -- ✓ dockerfile-language-server dockerls
        -- ✓ hadolint
        -- ✓ jdtls
        -- ✓ json-lsp jsonls
        -- ✓ markdown-toc
        -- ✓ markdownlint-cli2
        -- ✓ marksman
        -- ✓ prisma-language-server prismals
        -- ✓ pyright
        -- ✓ ruff
        -- ✓ selene
        -- ✓ shfmt
        -- ✓ stylua
        -- ✓ tailwindcss-language-server tailwindcss
        -- ✓ taplo
        -- ✓ tree-sitter-cli
        -- ✓ vtsls
      },
    },
  },
}
