-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- keybind to press escape <esc><esc> instead of c-\ c-n in terminal only
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "quick switch to normal mode in terminal" })

--snacks picker keybinding
vim.keymap.set("n", "<leader>ui", function() require("snacks.picker").icons() end, { desc = "Icon Picker" })

--Show all prior notification history
vim.keymap.set(
  "n",
  "<leader>N",
  function() require("snacks.notifier").show_history() end,
  { desc = "Show Nofitication History" }
)

-- Bafa buffer editor keybind
vim.keymap.set("n", "<leader>B", require("bafa").toggle, { desc = "Toggle Bafa Buffer Manager" })

-- disable mouse input
vim.opt.mouse = ""

-- Misc settings i think would be nice
local opt = vim.opt -- for conciseness

opt.exrc = true
opt.secure = true

-- line numbers
vim.o.relativenumber = false
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.scrolloff = 10

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
-- opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- enable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
-- opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
-- opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append "unnamedplus" -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- Neovide Settings Below
if vim.g.neovide then
  vim.o.guifont = "Monaspace Neon NF:h14"
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  vim.opt.linespace = 5
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_detatch_on_quit = "always_quit"
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_hack = false
  vim.g.neovide_highlight_matching_pair = true
  vim.g.neovide_cursor_smooth_blink = true
  vim.g.neovide_cursor_vfx_mode = "torpedo"
end
-- XcodeBuild Key Bindings
vim.keymap.set("n", "<leader>X", "<cmd>XcodebuildPicker<cr>", { desc = "Show Xcodebuild Actions" })
vim.keymap.set("n", "<leader>xf", "<cmd>XcodebuildProjectManager<cr>", { desc = "Show Project Manager Actions" })

vim.keymap.set("n", "<leader>xb", "<cmd>XcodebuildBuild<cr>", { desc = "Build Project" })
vim.keymap.set("n", "<leader>xB", "<cmd>XcodebuildBuildForTesting<cr>", { desc = "Build For Testing" })
vim.keymap.set("n", "<leader>xr", "<cmd>XcodebuildBuildRun<cr>", { desc = "Build & Run Project" })

vim.keymap.set("n", "<leader>xt", "<cmd>XcodebuildTest<cr>", { desc = "Run Tests" })
vim.keymap.set("v", "<leader>xt", "<cmd>XcodebuildTestSelected<cr>", { desc = "Run Selected Tests" })
vim.keymap.set("n", "<leader>xT", "<cmd>XcodebuildTestClass<cr>", { desc = "Run Current Test Class" })
vim.keymap.set("n", "<leader>x.", "<cmd>XcodebuildTestRepeat<cr>", { desc = "Repeat Last Test Run" })

vim.keymap.set("n", "<leader>xl", "<cmd>XcodebuildToggleLogs<cr>", { desc = "Toggle Xcodebuild Logs" })
vim.keymap.set("n", "<leader>xc", "<cmd>XcodebuildToggleCodeCoverage<cr>", { desc = "Toggle Code Coverage" })
vim.keymap.set("n", "<leader>xC", "<cmd>XcodebuildShowCodeCoverageReport<cr>", { desc = "Show Code Coverage Report" })
vim.keymap.set("n", "<leader>xe", "<cmd>XcodebuildTestExplorerToggle<cr>", { desc = "Toggle Test Explorer" })
vim.keymap.set("n", "<leader>xs", "<cmd>XcodebuildFailingSnapshots<cr>", { desc = "Show Failing Snapshots" })

vim.keymap.set("n", "<leader>xp", "<cmd>XcodebuildPreviewGenerateAndShow<cr>", { desc = "Generate Preview" })
vim.keymap.set("n", "<leader>x<cr>", "<cmd>XcodebuildPreviewToggle<cr>", { desc = "Toggle Preview" })

vim.keymap.set("n", "<leader>xd", "<cmd>XcodebuildSelectDevice<cr>", { desc = "Select Device" })
vim.keymap.set("n", "<leader>xq", "<cmd>Telescope quickfix<cr>", { desc = "Show QuickFix List" })

vim.keymap.set("n", "<leader>xx", "<cmd>XcodebuildQuickfixLine<cr>", { desc = "Quickfix Line" })
vim.keymap.set("n", "<leader>xa", "<cmd>XcodebuildCodeActions<cr>", { desc = "Show Code Actions" })
