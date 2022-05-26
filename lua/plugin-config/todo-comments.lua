-- https://github.com/folke/todo-comments.nvim
local status, todo = pcall(require, "todo-comments")
if not status then
  vim.notify("没有找到 todo-comments")
  return
end

local options = {
    keywords = {
        -- alt = alias
        FIX = {
            icon = " ",
            color = "#DC2626",
            alt = {"FIXME", "BUG", "FIXIT", "ISSUE", "!"}
        },
        TODO = {icon = " ", color = "#10B981"},
        HACK = {icon = " ", color = "#7C3AED"},
        WARN = {icon = " ", color = "#FBBF24", alt = {"WARNING", "XXX"}},
        PERF = {icon = " ", color = "#FC9868", alt = {"OPTIM", "PERFORMANCE", "OPTIMIZE"}},
        NOTE = {icon = " ", color = "#2563EB", alt = {"INFO"}}
    }
}

todo.setup(options)
