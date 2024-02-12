return {
    --"bluz71/vim-nightfly-guicolors",
    --"bluz71/vim-moonfly-colors", name = "moonfly",
    --"ellisonleao/gruvbox.nvim",
    "savq/melange-nvim",
    priority = 1000 ,
    config = function() --Load the color scheme
        vim.cmd([[colorscheme melange]])
        vim.cmd([[hi VertSplit guibg=bg]])
        vim.cmd([[hi EndOfBuffer guifg=bg]])
    end,
}
