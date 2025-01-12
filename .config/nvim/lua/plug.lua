local vim = vim
local Plug = vim.fn['plug#']


vim.call('plug#begin')

-- List your plugins here

Plug('morhetz/gruvbox')
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')
Plug('ibhagwan/fzf-lua')
Plug('akinsho/bufferline.nvim', { ['tag'] = '*' })
Plug('nvim-lualine/lualine.nvim')

vim.call('plug#end')

