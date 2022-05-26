-- https://github.com/nvim-pack/nvim-spectre

-- • yay -S sed
-- • https://github.com/BurntSushi/ripgrep

local status, spectre = pcall(require, "spectre")
if not status then
  vim.notify("没有找到a spectre")
  return
end

local plugin_maps = {
        open = "]o",
        open_visual = "]v",
        open_file_search = "]s",
        toggle_line = "]d",
        current_file = "]c",
        show_option_menu = "]m",
        run_replace = "]r",
        change_view_mode = "]e",
        select_entry = "<cr>"
   -- show_option_menu = "]o",
  --  run_replace = "]r",
   -- change_view_mode = "]v"
}
local options = {
    mapping = {
       -- 删除选中
            ["toggle_line"] = {
                map = plugin_maps.toggle_line,
                cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
                desc = "toggle current item"
            },
            -- 前往文件
            ["enter_file"] = {
                map = plugin_maps.select_entry,
                cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
                desc = "goto current file"
            },
            -- 查看菜单（忽略大小写、忽略隐藏文件）
            ["show_option_menu"] = {
                map = plugin_maps.show_option_menu,
                cmd = "<cmd>lua require('spectre').show_options()<CR>",
                desc = "show option"
            },
            -- 开始替换
            ["run_replace"] = {
                map =  plugin_maps.run_replace,
                cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
                desc = "replace all"
            },
            -- 显示差异
            ["change_view_mode"] = {
                map = plugin_maps.change_view_mode,
                cmd = "<cmd>lua require('spectre').change_view()<CR>",
                desc = "change result view mode"
            }
    }
}

-- spectre.setup(options)
spectre.setup({})
