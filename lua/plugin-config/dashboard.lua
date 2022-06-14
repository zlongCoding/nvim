local dashboard = require("dashboard")
local header = {
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
    [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
    [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
    [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
    [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
    [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
    [[                                                   ]],
    [[                [ version : 0.7.0 ]                ]],
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
}
dashboard.custom_header = header
local custom_center = {
   {
        icon = "  ",
        desc = "查找文件  ",
        shortcut = "SPC f f",
        action = "Telescope find_files"
    },
    {
        icon = "  ",
        desc = "打开最近的文件",
        shortcut = "SPC f o",
        action = "Telescope oldfiles"
    },
    {
        icon = "  ",
        desc = "打开最近的项目",
        shortcut = "SPC f p",
        action = "Telescope projects"
    },
    {
        icon = "  ",
        desc = "查找单词",
        shortcut = "SPC f w",
        action = "Telescope live_grep"
    },
    {
        icon = "  ",
        desc = "查看标签",
        shortcut = "SPC f m",
        action = "Telescope marks"
    },
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


dashboard.custom_center = {
  {icon = '',desc= '开始工作吧', action=''}
}

dashboard.custom_footer = {
    "",
    "",
}

