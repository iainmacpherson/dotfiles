return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({  -- parsers
            ensure_installed = {
                "c",
                "cpp",
                "lua",
                "vim",
                "vimdoc",
                "go",
                "markdown",
                "python",
                "typescript",
                "javascript",
                "tsx",
                "matlab",
                "meson",
                "json",
                "xml",
                "csv",
                "groovy",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
