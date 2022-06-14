-- https://github.com/kyazdani42/nvim-tree.lua
-- local nvim_tree = require'nvim-tree'
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("没有找到 nvim-tree")
    return
end

-- 列表操作快捷键
local list_keys = require("keybindings").nvimTreeList

local g = vim.g

-- g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
-- g.nvim_tree_git_hl = 0
-- g.nvim_tree_highlight_opened_files = 0
--
--这里是升级之后的配置
--[[ g.nvim_tree_indent_markers = 1 ]]
-- g.nvim_tree_root_folder_modifier = table.concat {":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??"}
--
-- g.nvim_tree_show_icons = {
--     folders = 1,
--     files = 1,
--     git = 1
-- }
--

nvim_tree.setup(
    {
        -- open_on_setup = true,
        -- 隐藏 .文件 和 node_modules 文件夹
        filters = {
            dotfiles = false,
            custom = {".git"}
        },
        disable_netrw = true,
        hijack_netrw = true,
        ignore_ft_on_setup = {
          "startify",
          "dashboard",
          "alpha",
        },
        -- auto_close = false,
        open_on_tab = false,
        hijack_cursor = true,

        hijack_unnamed_buffer_when_opening = false,
        -- 是否根据文件路径，自动更改文件目录
       update_cwd = false,
        update_focused_file = {
            enable = true,
            update_cwd = false
        },
        renderer = {
            indent_markers = {
                enable = true
            }
        },
        view = {
            -- 宽度
            width = 36,
            -- 也可以 'right'
            side = "left",
            -- 隐藏根目录
            hide_root_folder = true,
            -- 自定义列表中快捷键
            mappings = {
                custom_only = true
                --[[ list = list_keys, ]]
            },
            -- 不显示行数
            number = true,
            relativenumber = true,
            -- 显示图标
            signcolumn = "yes"
        },
        git = {
            enable = false,
            ignore = false
        },
        actions = {
            open_file = {
                -- quit_on_open = true,
                resize_window = true
            }
        }
    }
)
