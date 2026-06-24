-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
vim.cmd.colorscheme "material-oceanic"
-- disable mouse input
vim.o.mouse = ""

-- line numbers
vim.o.relativenumber = false
vim.o.number = true -- shows absolute line number on cursor line (when relative number is on)
vim.o.scrolloff = 10 -- makes visual not scroll more than x top/bottom from cursor

-- tabs & indentation
vim.o.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.o.shiftwidth = 2 -- 2 spaces for indent width
-- vim.o.expandtab = true -- expand tab to spaces
vim.o.autoindent = true -- copy indent from current line when starting new one

-- cmd line height at bottom
vim.o.cmdheight = 0

-- line wrapping
vim.o.wrap = false -- enable line wrapping

-- search settings
vim.o.ignorecase = true -- ignore case when searching
vim.o.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
vim.o.cursorline = true -- highlight the current cursor line

vim.opt.selection = "inclusive"

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
vim.o.termguicolors = true
-- vim.o.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.o.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
-- vim.o.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
vim.opt.clipboard:append "unnamedplus" -- use system clipboard as default register

-- split windows
vim.o.splitright = true -- split vertical window to the right
vim.o.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
vim.o.swapfile = false

-- Neovide Settings Below
if vim.g.neovide then
  vim.o.guifont = "Monaspace Neon NF:h14"
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  vim.o.linespace = 10
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_detatch_on_quit = "always_quit"
  vim.g.neovide_remember_window_size = true
  -- vim.g.neovide_cursor_hack = false
  vim.g.neovide_highlight_matching_pair = true
  -- vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_cursor_vfx_mode = "torpedo"
end
