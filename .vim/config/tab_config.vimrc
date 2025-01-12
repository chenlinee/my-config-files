nnoremap t :call TabExpandKernelToggle()<cr>

let g:tab_expand_kernel_on = 0
" 自动缩进
set autoindent
" tab显示的空格数
set tabstop=4
" 缩进字符数
set shiftwidth=4
" tab自动转空格
set expandtab
" tab自动转空格数
set softtabstop=4

function! TabExpandKernelToggle()
    if g:tab_expand_kernel_on == 0
        let g:tab_expand_kernel_on = 1
        " 自动缩进
        set autoindent
        " tab显示的空格数
        set tabstop=8
        " 缩进字符数
        set shiftwidth=8
        " tab自动转空格
        set noexpandtab
        " tab自动转空格数
        set softtabstop=0
    else
        let g:tab_expand_kernel_on = 0
        " 自动缩进
        set autoindent
        " tab显示的空格数
        set tabstop=4
        " 缩进字符数
        set shiftwidth=4
        " tab自动转空格
        set expandtab
        " tab自动转空格数
        set softtabstop=4
    endif
endfunction
