-- https://github.com/AndrewRadev/switch.vim

-- local utils = require("tools.utils")

local switch_words = {
    -- status
    {"true", "false"},
    {"on", "off"},
    {"yes", "no"},
    {"disable", "enable"},
    {"open", "close"},
    {"in", "out"},
    {"resolve", "reject"},
    -- event
    {"start", "end"},
    {"before", "after"},
    {"from", "to"},
    {"relative", "absolute"},
    -- direction
    {"up", "down"},
    {"left", "right"},
    {"row", "column"},
    -- color
    {"drak", "light"},
    {"white", "black"},
    -- network
    {"get", "post"},
    -- symbol
    {"+", "-"},
    {">", "<"},
    {"=", "!="}
}

function title(word)
    local s, _ = string.gsub(word, "^%l", string.upper)
    return s
end


local save_words = {}

for _, value in ipairs(switch_words) do
    local x, y = value[1], value[2]
    table.insert(save_words, value)
    table.insert(save_words, {string.upper(x), string.upper(y)})
    table.insert(save_words, {title(x), title(y)})
end

vim.g.switch_custom_definitions = save_words
-- vim.g.switch_custom_definitions = 
--     \[
--       \   {
--       \     '\(\k\+=\){\([[:keyword:].]\+\)}':      '\1{`${\2}`}',
--       \     '\(\k\+=\){`${\([[:keyword:].]\+\)}`}': '\1{\2}',
--       \   },
--       --     -- status
--     \{"true": "false"},
--     \{"on": "off"},
--     \{"yes": "no"},
--     \{"disable": "enable"},
--     \{"open": "close"},
--     \{"in": "out"},
--     \{"resolve": "reject"},
--     -- event
--     \{"start": "end"},
--     \{"before": "after"},
--     \{"from": "to"},
--     \{"relative": "absolute"},
--     -- direction
--     \{"up": "down"},
--     \{"left": "right"},
--     \{"row": "column"},
--     -- network
--     \{"get": "post"},
--     -- symbol
--     \{"+": "-"},
--     \{">": "<"},
--     \{"=": "!="}
--       \ ]
