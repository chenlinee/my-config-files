require("bufferline").setup{
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "coc",
	numbers = "ordinal",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
