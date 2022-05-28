-- 基础配置
require("basic")
-- 快捷键映射
require("keybindings")
-- Packer插件管理
require("plugins")
-- 主题设置
require("colorscheme")
-- 自动命令
require("autocmds")
-- 执行shell 脚本
require("shell")
-- 插件配置

require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
-- require("plugin-config.dashboard")
require("plugin-config.alpha")
require("plugin-config.project")
-- //高亮  ：TSInstall
require("plugin-config.nvim-treesitter")
require("plugin-config.indent-blankline")
require("plugin-config.toggleterm")
require("plugin-config.surround")
require("plugin-config.comment")
require("plugin-config.nvim-autopairs")
require("plugin-config.fidget")


-- 格式化插件

require("plugin-config.neoformat")
require("plugin-config.switch")
require("plugin-config.todo-comments")
require("plugin-config.vim-visual-multi")

require("plugin-config.nvim-spectre")
require("plugin-config.vim-illuminate")
require("plugin-config.vista")
require("plugin-config.hlargs")
require("plugin-config.which-key")
require("plugin-config.treesitter-context")


-- Git
require("plugin-config.gitsigns")
-- 内置LSP
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
-- require("lsp.formatter")
-- require("lsp.null-ls")

-- utils

-- require("utils.change-colorscheme")
-- 复制到windows剪贴板
-- require('utils.fix-yank')
-- require("utils.global")
--
--
-- VimspectorInstall
-- https://puremourning.github.io/vimspector/configuration.html#remote-debugging-support
require("spector.vimspector")
-- require("dap.nvim-dap")


