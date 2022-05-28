vim.g.dashboard_default_executive = "telescope"

vim.g.dashboard_custom_section = {

  b = { description = { "   新建文件       "}, command =  ':ene <BAR> startinsert <CR>' },
  c = { description = { "   打开最近的文件  " }, command = ":Telescope oldfiles<CR>" },
  d = { description = { "   查找单词       " }, command =  ":Telescope live_grep<CR>" },
  e = { description = { "   查看标签       " }, command =  ":Telescope marks<CR>" },
  f = { description = { "   查找文件       " }, command =  ":Telescope find_files<CR>" },
  g = { description = {"  退出 nvim     " }, command =   ':qa<CR>'},
 }



vim.g.dashboard_custom_header = {





  [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
  [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
  [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
  [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
  [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
  [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
  [[                                                   ]],
  [[                [ version : 1.0.0 ]                ]],
}

