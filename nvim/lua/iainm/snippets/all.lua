-- Snippets available in any file
return {
    require("luasnip").snippet(
        { trig = "date_today" },
        { t(os.date("%B %d, %Y")) }
    ),
}

