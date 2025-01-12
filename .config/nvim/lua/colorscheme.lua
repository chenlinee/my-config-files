-- Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
-- If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
-- (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
local in_tmux = os.getenv("TMUX") ~= nil
local is_apple_terminal = os.getenv("TERM_PROGRAM") == "Apple_Terminal"

if not in_tmux and not is_apple_terminal then
  if vim.fn.has("nvim") == 1 then
    -- For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = "1"
  end
  -- For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  -- Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  --  < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if vim.fn.has("termguicolors") == 1 then
    vim.opt.termguicolors = true
  end
end

vim.g.terminal_colors = true -- add neovim terminal colors
vim.g.undercurl = true
vim.g.underline = true
vim.g.bold = true
vim.g.gruvbox_italic = 1
vim.g.strikethrough = true
vim.g.invert_selection = false
vim.g.invert_signs = false
vim.g.invert_tabline = false
vim.g.invert_intend_guides = false
vim.g.inverse = true -- invert background for search, diffs, statuslines and errors
vim.g.contrast = "" -- can be "hard", "soft" or empty string
vim.g.palette_overrides = {}
vim.g.overrides = {}
vim.g.dim_inactive = false
vim.g.transparent_mode = false
vim.o.background = "light" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
