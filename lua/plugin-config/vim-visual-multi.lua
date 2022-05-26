-- https://github.com/mg979/vim-visual-multi

local vim_visual_multi_key =  {
    switch_mode = "<tab>",
    find_under = "<c-n>",
    skip_region = "<c-s>",
    remove_region = "<c-p>",
    cursor_up = "<c-k>",
    cursor_down = "<c-j>",
}

vim.g.VM_default_mappings = 0
vim.g.VM_maps = {
    ["Switch Mode"] = vim_visual_multi_key.switch_mode,
    ["Find Under"] = vim_visual_multi_key.find_under,
    ["Skip Region"] = vim_visual_multi_key.skip_region,
    ["Remove Region"] = vim_visual_multi_key.remove_region,
    ["Select Cursor Down"] = vim_visual_multi_key.cursor_down,
    ["Select Cursor Up"]   =  vim_visual_multi_key.cursor_up
}
