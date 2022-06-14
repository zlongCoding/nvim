local dashboard = require("dashboard")
--
-- local function repeat_str(str, times)
--     return times > 0 and str .. repeat_str(str, times - 1) or ""
-- end
--
local empty_line = [[]]
local header = {
    empty_line,
    [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
    [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
    [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
    [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
    [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
    [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
    [[                                                   ]],
    [[                [ version : 1.0.0 ]                ]],
  empty_line
}

-- local splash = vim.fn.system("shuf -n 1 " .. vim.fn.stdpath("config") .. "/splashes"):sub(1, -2) .. "!"
-- local padding = (#header[#header] - #splash) / 2 - 2
-- splash = repeat_str(" ", padding) .. "[ " .. splash .. " ]"

-- Add the splash string followed by two empty lines
-- table.insert(header, splash)
table.insert(header, empty_line)
table.insert(header, empty_line)
table.insert(header, empty_line)

dashboard.custom_header = header
dashboard.custom_center = {
    {
        icon = "  ",
        desc = "新建文件",
        shortcut = "a",
        action = ":ene <BAR> startinsert <CR>"
    },
    {
        icon = "  ",
        desc = "查找文件  ",
        shortcut = "b",
        action = "Telescope find_files"
    },
    {
        icon = "  ",
        desc = "打开最近的文件",
        shortcut = "c",
        action = "Telescope oldfiles"
    },
    -- {
    --     icon = "  ",
    --     desc = "打开最近的项目",
    --     shortcut = "d",
    --     action = ":Telescope projects<CR>"
    -- },
    {
        icon = "  ",
        desc = "查找单词",
        shortcut = "e",
        action = "Telescope live_grep"
    },
   --  {
   --      icon = "  ",
   --      desc = "查看标签",
   --      shortcut = "f",
   --      action = ":Telescope marks<CR>"
   --  },
   --  {
   --      icon = "  ",
   --      desc = " 打开iterm",
   --      shortcut = "n",
   --      action = "FloatermToggle"
   --  },
   --  {
   --      icon = "  ",
   --      desc = "查看配置",
   --      shortcut = "ss",
   --      action = ":e ~/.config/nvim/init.lua <CR>"
   --  },
   -- {
   --      icon = "  ",
   --      desc = "退出 nvim",
   --      shortcut = "qa",
   --      action = ":qa<CR>"
   --  }
}
