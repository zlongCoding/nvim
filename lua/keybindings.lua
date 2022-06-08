-- leader key 为空
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
    noremap = true,
    silent = true
}

-- 本地变量
local map = vim.api.nvim_set_keymap

-- $跳到行尾不带空格 (交换$ 和 g_)
map("v", "$", "g_", opt)
map("v", "g_", "$", opt)
map("n", "$", "g_", opt)
map("n", "g_", "$", opt)

-- 命令行下 Ctrl+j/k  上一个下一个
map("c", "<C-j>", "<C-n>", {noremap = false})
map("c", "<C-k>", "<C-p>", {noremap = false})
-- save file
map("n", "<C-s>", ":w<CR>", opt)

-- fix :set wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", {expr = true, silent = true})
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", {expr = true, silent = true})

-- 上下滚动浏览
map("n", "<C-j>", "5j", opt)
map("n", "<C-k>", "5k", opt)
map("v", "<C-j>", "5j", opt)
map("v", "<C-k>", "5k", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "10k", opt)
map("n", "<C-d>", "10j", opt)

-- magic search
-- map("n", "/", "/\\v", { noremap = true, silent = false })
-- map("v", "/", "/\\v", { noremap = true, silent = false })
--
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- 在visual mode 里粘贴不要复制
map("v", "p", '"_dP', opt)

-- 退出
map("n", "qq", ":q!<CR>", opt)
map("n", "<leader>q", ":qa!<CR>", opt)

-- insert 模式下，跳到行首行尾
-- map("i", "<C-h>", "<ESC>I", opt)
-- map("i", "<C-l>", "<ESC>A", opt)

------------------------------------------------------------------
-- windows 分屏快捷键
------------------------------------------------------------------
-- 取消 s 默认功能
map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt) -- close others
-- alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
-- <leader> + hjkl 窗口之间跳转
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)

-- 上下左右缩放
map("n", "<C-S-Up>", ":resize -2<CR>", opt)
map("n", "<C-S-Down>", ":resize +2<CR>", opt)
map("n", "<C-S-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-S-Right>", ":vertical resize +2<CR>", opt)

-- 相等比例
map("n", "s=", "<C-w>=", opt)

-- Terminal相关
map("n", "st", ":sp | terminal<CR>", opt)
map("n", "stv", ":vsp | terminal<CR>", opt)
-- Esc 回 Normal 模式
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)
map("t", "<leader>h", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<leader>j", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<leader>k", [[ <C-\><C-N><C-w>k ]], opt)

map("t", "<leader>l", [[ <C-\><C-N><C-w>l ]], opt)

-- lsp÷
-- rename
map("n", "gn", "<cmd>Lspsaga rename<CR>", opt)
-- code action
map("n", "gc", "<cmd>Lspsaga code_action<CR>", opt)

map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)

map("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)

map("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opt)

-- diagnostic
map("n", "gp", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
map("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opt)
map("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opt)
map("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
map("n", "gH", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
map("n", "gw", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opt)
map("n", "gv", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opt)
--
-- nnoremap <leader>xx <cmd>TroubleToggle<cr>
-- nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
-- nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
-- nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
-- nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
-- nnoremap gR <cmd>TroubleToggle lsp_references<cr>
--
--

-- map("n", "gL", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opt)
map("n", "gl", "<cmd>TroubleToggle workspace_diagnostics<CR>", opt)
--------------------------------------------------------------------
-- 插件快捷键
local pluginKeys = {}

-- treesitter 折叠
-- map("n", "zz", ":foldclose<CR>", opt)
-- map("n", "Z", ":foldopen<CR>", opt)
-- 格式化插件
map("n", "<leader>]", "<cmd>Neoformat<CR>", opt)
-- hop
-- word = "mw",
--       line = "ml",
--       char = "ma",
--       charWold = "t + char"
-- hop
map("n", "mw", "<cmd>HopWord<CR>", opt)
map("n", "ml", "<cmd>HopLine<CR>", opt)
map("n", "ma", "<cmd>HopChar1<CR>", opt)

--- go to preview 装逼插件
-- definition = "md",
--         implementation = "mi",
--         all_win = "mc",
--         references = "mr",
--         -- /<leader>gd
--         gotoGile = "gd"

map("n", "md", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", opt)
map("n", "mi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", opt)
map("n", "mc", "<cmd>lua require('goto-preview').close_all_win()<CR>", opt)
map("n", "mr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", opt)

---- spectre

map("n", "]d", "<cmd>lua require('spectre').toggle_line()<CR>", opt)
-- map("n", "<cr>","<cmd>lua require('spectre.actions').select_entry()<CR>", opt )
map("n", "]<cr>", "<cmd>lua require('spectre.actions').select_entry()<CR>", opt)
map("n", "]m", "<cmd>lua require('spectre').show_options()<CR>", opt)
map("n", "]r", "<cmd>lua require('spectre.actions').run_replace()<CR>", opt)
map("n", "]e", "<cmd>lua require('spectre').change_view()<CR>", opt)
map("n", "]o", "<cmd>lua require('spectre').open()<CR>", opt)
map("n", "]s", "viw:lua require('spectre').open_file_search()<CR>", opt)
map("n", "]v", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", opt)

-- nvim-tree

map("n", "<leader>1", ":NvimTreeToggle <CR>", opt)
map("n", "<leader>2", ":NvimTreeFocus <CR>", opt)
map("n", "<leader>mr", ":NvimTreeRefresh <CR>", opt)
map("n", "<leader>mf", ":NvimTreeFindFile <CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
    -- 打开文件或文件夹
    {key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit"},
    -- v分屏打开文件
    {key = "v", action = "vsplit"},
    -- h分屏打开文件
    {key = "h", action = "split"},
    -- Ignore (node_modules)
    {key = "i", action = "toggle_ignored"},
    -- Hide (dotfiles)
    {key = ".", action = "toggle_dotfiles"},
    {key = "R", action = "refresh"},
    -- 文件操作
    {key = "a", action = "create"},
    {key = "d", action = "remove"},
    {key = "r", action = "rename"},
    {key = "x", action = "cut"},
    {key = "c", action = "copy"},
    {key = "p", action = "paste"},
    {key = "y", action = "copy_name"},
    {key = "Y", action = "copy_path"},
    {key = "gy", action = "copy_absolute_path"},
    {key = "I", action = "toggle_file_info"},
    {key = "n", action = "tabnew"},
    -- 进入下一级
    {key = {"]"}, action = "cd"},
    -- 进入上一级
    {key = {"["}, action = "dir_up"},
    {key = "s", action = "system_open"}
}
-- bufferline
-- 左右Tab切换
map("n", "<TAB>", ":BufferLineCycleNext<CR>", opt)
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opt)
-- "moll/vim-bbye" 关闭当前 buffer
map("n", "<leader>bc", ":Bdelete!<CR>", opt)
-- 关闭左/右侧标签页
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
-- 关闭其他标签页
map("n", "<leader>bo", ":BufferLineCloseRight<CR>:BufferLineCloseLeft<CR>", opt)
-- 关闭选中标签页
map("n", "<leader>bp", ":BufferLinePickClose<CR>", opt)

-- Telescope
-- map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
--

map("n", "<leader>fb", ":Telescope buffers <CR>", opt)
map("n", "<leader>ff", ":Telescope find_files <CR>", opt)
map("n", "<leader>fa", ":Telescope find_files follow=true no_ignore=true hidden=true <CR>", opt)
map("n", "<leader>cm", ":Telescope git_commits <CR>", opt)
map("n", "<leader>gt", ":Telescope git_status <CR>", opt)
map("n", "<leader>fh", ":Telescope help_tags <CR>", opt)
map("n", "<leader>fw", ":Telescope live_grep <CR>", opt)
map("n", "<leader>fo", ":Telescope oldfiles <CR>", opt)
map("n", "<leader>fp", ":Telescope projects<CR>", opt)
--  map("n", "<leader>th", ":Telescope themes <CR>", opt)
map("n", "<leader>3", "<cmd>Vista!!<CR>", opt)

-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
    i = {
        -- 上下移动
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<C-n>"] = "move_selection_next",
        ["<C-p>"] = "move_selection_previous",
        -- 历史记录
        ["<Down>"] = "cycle_history_next",
        ["<Up>"] = "cycle_history_prev",
        -- 关闭窗口
        -- ["<esc>"] = actions.close,
        ["<C-c>"] = "close",
        -- 预览窗口上下滚动
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down"
    }
}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
pluginKeys.comment = {
    -- Normal 模式快捷键
    toggler = {
        line = ",c",
        block = ",cc"
    },
    -- Visual 模式
    opleader = {
        line = ",l",
        block = ",ll"
    }
}
-- ctrl + /
map("n", "<C-_>", ",c", {noremap = false})
map("v", "<C-_>", ",c", {noremap = false})
-- map("i", "<C-_>", ",c", { noremap = false })

-- switch
map("n", "g]", ":Switch<cr>", opt)

-- vim_dadbod_ui
-- map("n", "<leader>4", ":DBUIToggle<cr>")
-- todo_comments
-- map("n", , "<cmd>TodoTelescope theme=dropdown<cr>")

map("n", "<leader>td", "<cmd>TodoTelescope theme=dropdown<cr>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
-- 打开普通终端
map("n", "<leader>tb", "<cmd>exe v:count.'ToggleTerm'<CR>", opt)
-- 打开浮动终端
map("n", "<leader>tf", "<cmd>lua require('toggleterm').float_toggle()<CR>", opt)
-- 打开lazy git 终端
map("n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<CR>", opt)
-- 打开或关闭所有终端
map("n", "<leader>ta", "<cmd>ToggleTermToggleAll<CR>", opt)

-- 自定义 toggleterm 3个不同类型的命令行窗口
-- <leader>ta 浮动
-- <leader>tb 右侧
-- <leader>tc 下方
-- 特殊lazygit 窗口，需要安装lazygit
-- <leader>tg lazygit
pluginKeys.mapToggleTerm = function(toggleterm)
    vim.keymap.set({"n", "t"}, "<leader>tf", toggleterm.toggleA)
    vim.keymap.set({"n", "t"}, "<leader>tr", toggleterm.toggleB)
    vim.keymap.set({"n", "t"}, "<leader>tb", toggleterm.toggleC)
    vim.keymap.set({"n", "t"}, "<leader>tg", toggleterm.toggleG)
end

-- typescript 快捷键
pluginKeys.mapTsLSP = function(mapbuf)
    mapbuf("n", "gs", ":TSLspOrganize<CR>", opt)
    mapbuf("n", "gR", ":TSLspRenameFile<CR>", opt)
    mapbuf("n", "gi", ":TSLspImportAll<CR>", opt)
end

-- vimspector
pluginKeys.mapVimspector = function()
    -- 开始
    map("n", "<leader>dd", ":call vimspector#Launch()<CR>", opt)
    -- 结束
    map("n", "<Leader>de", ":call vimspector#Reset()<CR>", opt)
    -- 继续
    map("n", "<Leader>dc", ":call vimspector#Continue()<CR>", opt)
    -- 设置断点
    map("n", "<Leader>dt", ":call vimspector#ToggleBreakpoint()<CR>", opt)
    map("n", "<Leader>dT", ":call vimspector#ClearBreakpoints()<CR>", opt)
    --  stepOver, stepOut, stepInto
    map("n", "<leader>dj", "<Plug>VimspectorStepOver", opt)
    map("n", "<leader>dk", "<Plug>VimspectorStepOut", opt)
    map("n", "<leader>dl", "<Plug>VimspectorStepInto", opt)
end

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
    local feedkey = function(key, mode)
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
    end
    local has_words_before = function()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    return {
        -- 上一个
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<C-j>"] = cmp.mapping.select_next_item(),
        -- 出现补全
        ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
        -- 取消
        ["<A-,>"] = cmp.mapping(
            {
                i = cmp.mapping.abort(),
                c = cmp.mapping.close()
            }
        ),
        -- 确认
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ["<CR>"] = cmp.mapping.confirm(
            {
                select = true,
                behavior = cmp.ConfirmBehavior.Replace
            }
        ),
        -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        -- 如果窗口内容太多，可以滚动
        ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
        ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),
        -- snippets 跳转
        ["<C-l>"] = cmp.mapping(
            function(_)
                if vim.fn["vsnip#available"](1) == 1 then
                    feedkey("<Plug>(vsnip-expand-or-jump)", "")
                end
            end,
            {"i", "s"}
        ),
        ["<C-h>"] = cmp.mapping(
            function()
                if vim.fn["vsnip#jumpable"](-1) == 1 then
                    feedkey("<Plug>(vsnip-jump-prev)", "")
                end
            end,
            {"i", "s"}
        ),
        -- super Tab
        ["<Tab>"] = cmp.mapping(
            function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif vim.fn["vsnip#available"](1) == 1 then
                    feedkey("<Plug>(vsnip-expand-or-jump)", "")
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
                end
            end,
            {"i", "s"}
        ),
        ["<S-Tab>"] = cmp.mapping(
            function()
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                    feedkey("<Plug>(vsnip-jump-prev)", "")
                end
            end,
            {"i", "s"}
        )
        -- end of super Tab
    }
end

-- gitsigns
pluginKeys.gitsigns_on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map(
        "n",
        "<leader>gj",
        function()
            if vim.wo.diff then
                return "]c"
            end
            vim.schedule(
                function()
                    gs.next_hunk()
                end
            )
            return "<Ignore>"
        end,
        {expr = true}
    )

    map(
        "n",
        "<leader>gk",
        function()
            if vim.wo.diff then
                return "[c"
            end
            vim.schedule(
                function()
                    gs.prev_hunk()
                end
            )
            return "<Ignore>"
        end,
        {expr = true}
    )

    map({"n", "v"}, "<leader>gs", ":Gitsigns stage_hunk<CR>")
    map("n", "<leader>gS", gs.stage_buffer)
    map("n", "<leader>gu", gs.undo_stage_hunk)
    map({"n", "v"}, "<leader>gr", ":Gitsigns reset_hunk<CR>")
    map("n", "<leader>gR", gs.reset_buffer)
    map("n", "<leader>gp", gs.preview_hunk)
    map(
        "n",
        "<leader>gb",
        function()
            gs.blame_line({full = true})
        end
    )
    map("n", "<leader>gd", gs.diffthis)
    map(
        "n",
        "<leader>gD",
        function()
            gs.diffthis("~")
        end
    )
    -- toggle
    map("n", "<leader>gtd", gs.toggle_deleted)
    map("n", "<leader>gtb", gs.toggle_current_line_blame)
    -- Text object
    map({"o", "x"}, "ig", ":<C-U>Gitsigns select_hunk<CR>")
end

return pluginKeys
