vim.g.dashboard_default_executive = "telescope"
-- vim.g.dashboard_custom_footer = { "https://github.com/nshen/learn-neovim-lua" }

vim.g.dashboard_custom_section = {
  -- a = { description = { "  Projects              " }, command = "Telescope projects" },
  -- b = { description = { "  Recently files        " }, command = "Telescope oldfiles" },
  -- c = { description = { "  Edit keybindings      " }, command = "edit ~/.config/nvim/lua/keybindings.lua" },
  -- d = {
  --   description = { "  Edit Projects         " },
  --   command = "edit ~/.local/share/nvim/project_nvim/project_history",
  -- },

  -- a = { description = { "  查找文件  " }, command =  ":Telescope find_files<CR>" },
  b = { description = { "   新建文件       "}, command =  ':ene <BAR> startinsert <CR>' },
  c = { description = { "   打开最近的文件  " }, command = ":Telescope oldfiles<CR>" },
  d = { description = { "   查找单词       " }, command =  ":Telescope live_grep<CR>" },
  e = { description = { "   查看标签       " }, command =  ":Telescope marks<CR>" },
  f = { description = { "   查找文件       " }, command =  ":Telescope find_files<CR>" },
  g = { description = {"  退出 nvim     " }, command =   ':qa<CR>'},
  -- h = { description = { "  查找文件  " }, command =  ":Telescope find_files<CR>" },
  -- i = { description = { "  查找文件  " }, command =  ":Telescope find_files<CR>" },


  -- e = { description = { "  Edit .bashrc          " }, command = "edit ~/.bashrc" },
  -- f = { description = { "  Change colorscheme    " }, command = "ChangeColorScheme" },
  -- g = { description = { "  Edit init.lua         " }, command = "edit ~/.config/nvim/init.lua" },
  -- h = { description = {'  Find file          '}, command = 'Telescope find_files'},
  -- i = { description = {'  Find text          '}, command = 'Telescope live_grep'},
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

