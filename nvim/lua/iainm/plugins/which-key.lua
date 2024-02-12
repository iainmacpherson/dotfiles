return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,

    config = function()
        local wk = require("which-key")
        wk.setup({
            plugins = { spelling = true },
            presets = {
                operators = false, -- adds help for operators like d, y, ...
                motions = false, -- adds help for motions
                text_objects = false, -- help for text objects triggered after entering an operator
                windows = true, -- default bindings on <c-w>
                nav = true, -- misc bindings to work with windows
                z = true, -- bindings for folds, spelling and others prefixed with z
                g = true, -- bindings for prefixed with g
            },
            key_labels = { ["<leader>"] = "SPC" },
        })
        -- Leader based groups
        wk.register({
            mode = { "n", "v" },
            l = {
                name = "lsp",
                g = { name = "goto", },
                s = { name = "show", },
            },
            ["s"]       = { name = "+split" },
            ["<tab>"]   = { name = "+tabs" },
            ["e"]       = { name = "+exporer" },
            ["f"]       = { name = "+find" },
        }, {prefix = "<leader>"})
    end
}
