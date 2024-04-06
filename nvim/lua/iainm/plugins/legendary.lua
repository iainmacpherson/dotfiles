return {
    'mrjones2014/legendary.nvim',
    config = function ()
        local legendary = require("legendary")
        local utils = require("iainm.core.utils")
        legendary.setup({
            include_builtin = false,
            include_legendary_cmds = false,
            keymaps = {},
            commands = {
                {
                    'MarkdownPreview',
                    ':MarkdownPreview',
                    description = 'Render and display a preview of a markdown file in the system browser.',
                },
                {
                    itemgroup = 'Editor Commands',
                    description = 'Commands that edit editor settings or modify the current buffer.',
                    commands = {
                        {
                            ':EditConfig',
                            ':e $MYVIMRC | cd %:h',
                            description = 'Move the current working directory to the root of the nvim config.'
                        },
                        {
                            ':StripTrailingWhitespace',
                            ':%s/\\s\\+$//e',
                            description = 'Strip trailing whitespace from all lines in this file.',
                        },
                        {
                            ':ClearSearchTerm',
                            ':let @/ = ""',
                            description = 'Clear search to remove persistent highlighting.',
                        },
                        {
                            ':ToggleRelativeNumbers',
                            ':set relativenumber!',
                            description = 'Toggle relative numbers.',
                        },
                        {
                            ':EnableSyntaxFolding',
                            ':setlocal foldmethod=syntax',
                            description = 'Enable syntax based fold in local buffer',
                        },
                        {
                            ':ToggleSpell',
                            ':setlocal spell!',
                            description = 'Toggle spellcheck.',
                        },
                    },
                },
            },
            autocmds = {},
            funcs = {
            --    {
            --        utils.sayHello,
            --        description = 'Say Hello',
            --    },
            },
        })

        vim.keymap.set("n", "<Leader>/", "<cmd>ClearSearchTerm<CR>", { desc = "Clear the current search term"})
        vim.keymap.set("n", "<C-p>", "<cmd>Legendary<CR>", { desc = "Open Legendary command search"})
    end,
}
