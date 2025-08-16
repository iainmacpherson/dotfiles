-- Snippets common to both C and C++

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function guard_name(args, parent)
    local filename = vim.fn.expand('%:t:r')
    if filename == '' then
        filename = 'HEADER'
    end
    return filename:upper() .. '_H'
end

return {
    guard = s("guard", {
        t("#ifndef "),
        f(guard_name, {}),
        t({"", "#define "}),
        f(guard_name, {}),
        t({"", "", ""}),
        i(0),
        t({"", "", "#endif // "}),
        f(guard_name, {}),
    }),
}

