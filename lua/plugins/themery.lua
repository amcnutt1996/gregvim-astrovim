return {
  "zaldih/themery.nvim",
  lazy = false,
  priority = 500,
  config = function()
    require("themery").setup({
      livePreview = true,
      themes = {
        -- Ayu
        { name = "Ayu Dark",   colorscheme = "ayu-dark" },
        { name = "Ayu Mirage", colorscheme = "ayu-mirage" },
        -- Catppuccin
        { name = "Catppuccin Latte",     colorscheme = "catppuccin-latte" },
        { name = "Catppuccin Frappe",    colorscheme = "catppuccin-frappe" },
        { name = "Catppuccin Macchiato", colorscheme = "catppuccin-macchiato" },
        { name = "Catppuccin Mocha",     colorscheme = "catppuccin-mocha" },
        -- Cyberdream
        { name = "Cyberdream", colorscheme = "cyberdream" },
        -- Embark
        { name = "Embark", colorscheme = "embark" },
        -- GitHub
        { name = "GitHub Dark",               colorscheme = "github_dark" },
        { name = "GitHub Dark Default",       colorscheme = "github_dark_default" },
        { name = "GitHub Dark Dimmed",        colorscheme = "github_dark_dimmed" },
        { name = "GitHub Dark High Contrast", colorscheme = "github_dark_high_contrast" },
        -- Gruber Darker
        { name = "Gruber Darker", colorscheme = "gruber-darker" },
        -- Gruvbox
        { name = "Gruvbox", colorscheme = "gruvbox" },
        -- Kanagawa
        { name = "Kanagawa Wave",   colorscheme = "kanagawa-wave" },
        { name = "Kanagawa Dragon", colorscheme = "kanagawa-dragon" },
        { name = "Kanagawa Lotus",  colorscheme = "kanagawa-lotus" },
        -- Material (style must be set before applying)
        { name = "Material Oceanic",    colorscheme = "material", before = [[vim.g.material_style = "oceanic"]] },
        { name = "Material Deep Ocean", colorscheme = "material", before = [[vim.g.material_style = "deep ocean"]] },
        { name = "Material Palenight",  colorscheme = "material", before = [[vim.g.material_style = "palenight"]] },
        { name = "Material Darker",     colorscheme = "material", before = [[vim.g.material_style = "darker"]] },
        -- Melange
        { name = "Melange", colorscheme = "melange" },
        -- Moonfly
        { name = "Moonfly", colorscheme = "moonfly" },
        -- Nightfox variants
        { name = "Nightfox",  colorscheme = "nightfox" },
        { name = "Duskfox",   colorscheme = "duskfox" },
        { name = "Nordfox",   colorscheme = "nordfox" },
        { name = "Terafox",   colorscheme = "terafox" },
        { name = "Carbonfox", colorscheme = "carbonfox" },
        -- Nordic
        { name = "Nordic", colorscheme = "nordic" },
        -- OneDark
        { name = "OneDark", colorscheme = "onedark" },
        -- Rose Pine
        { name = "Rose Pine",      colorscheme = "rose-pine" },
        { name = "Rose Pine Moon", colorscheme = "rose-pine-moon" },
        { name = "Rose Pine Dawn", colorscheme = "rose-pine-dawn" },
        -- Tokyo Night
        { name = "Tokyo Night",       colorscheme = "tokyonight-night" },
        { name = "Tokyo Night Storm", colorscheme = "tokyonight-storm" },
        { name = "Tokyo Night Moon",  colorscheme = "tokyonight-moon" },
      },
    })
  end,
}
