local opt = {
  noremap = true,
  silent = true,
}

-- 本地变量
local map = vim.api.nvim_set_keymap

-- nvim-tree
-- map("n", "<A-t>", ":NvimTreeToggle<CR>", opt)
map("n", "<leader>t", ":NvimTreeFindFileToggle<CR>", opt)

-- lua-fzf
map("n", "<C-\\>", [[<Cmd>lua require"fzf-lua".buffers()<CR>]], {})
map("n", "<C-k>", [[<Cmd>lua require"fzf-lua".builtin()<CR>]], {})
map("n", "<C-p>", [[<Cmd>lua require"fzf-lua".files()<CR>]], {})
map("n", "<C-l>", [[<Cmd>lua require"fzf-lua".live_grep_glob()<CR>]], {})
map("n", "<C-g>", [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], {})
-- require("fzf-lua").utils.info(
--  "|<C-\\> buffers|<C-p> files|<C-g> grep|<C-l> live grep|<C-k> builtin|<F1> help|")

-- bufferline
map("n", "<A-1>", [[<Cmd>BufferLineGoToBuffer 1<CR>]], opt)
map("n", "<A-2>", [[<Cmd>BufferLineGoToBuffer 2<CR>]], opt)
map("n", "<A-3>", [[<Cmd>BufferLineGoToBuffer 3<CR>]], opt)
map("n", "<A-4>", [[<Cmd>BufferLineGoToBuffer 4<CR>]], opt)
map("n", "<A-5>", [[<Cmd>BufferLineGoToBuffer 5<CR>]], opt)
map("n", "<A-6>", [[<Cmd>BufferLineGoToBuffer 6<CR>]], opt)
map("n", "<A-7>", [[<Cmd>BufferLineGoToBuffer 7<CR>]], opt)
map("n", "<A-8>", [[<Cmd>BufferLineGoToBuffer 8<CR>]], opt)
map("n", "<A-9>", [[<Cmd>BufferLineGoToBuffer 9<CR>]], opt)
map("n", "<A-,>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
map("n", "<A-.>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "<A-i>", [[<Cmd>BufferLineMovePrev<CR>]], opt)
map("n", "<A-o>", [[<Cmd>BufferLineMoveNext<CR>]], opt)

