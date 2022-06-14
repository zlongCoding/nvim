local present, alpha = pcall(require, "alpha")

if not present then
   return
end
local ascii = {
  [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
  [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
  [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
  [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
  [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
  [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
  [[                                                   ]],
  [[                [ version : 1.0.0 ]                ]],
}

local header = {
   type = "text",
   val = ascii,
   opts = {
      position = "center",
      hl = "AlphaHeader",
   },
}

local function button(sc, txt, keybind)
   local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

   local opts = {
      position = "center",
      text = txt,
      shortcut = sc,
      cursor = 5,
      width = 36,
      align_shortcut = "right",
      hl = "AlphaButtons",
   }

   if keybind then
      opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
   end

   return {
      type = "button",
      val = txt,
      on_press = function()
         local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
         vim.api.nvim_feedkeys(key, "normal", false)
      end,
      opts = opts,
   }
end

local buttons = {
   type = "group",
   val = {
      button("a", "  查找文件  ", ":Telescope find_files<CR>"),
      button('b', '  新建文件', ':ene <BAR> startinsert <CR>'),
      button("c", "  打开最近的文件", ":Telescope oldfiles<CR>"),
      button("d", "  查找单词", ":Telescope live_grep<CR>"),
      button("e", "  查看标签", ":Telescope marks<CR>"),
      button('f', '  查看配置', ':e ~/.config/nvim/init.lua <CR>'),
      button('g', '  退出 nvim', ':qa<CR>'),
      button("h", "  主题", ":Telescope themes<CR>"),
      -- button("SPC e s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
   },
   opts = {
      spacing = 1,
   },
}

local section = {
   header = header,
   buttons = buttons,
}

alpha.setup {
   layout = {
      { type = "padding", val = 5 },
      section.header,
      { type = "padding", val = 2 },
      section.buttons,
   },
   opts = {},
}
