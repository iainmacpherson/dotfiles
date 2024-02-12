-- General editor options

vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.termguicolors = true

-- Indentation

-- Default
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indent Go with tabs
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "go",
    callback = function ()
        vim.opt_local.expandtab = false
    end
})
-- Indent Makefile with tabs
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "Makefile",
    callback = function ()
        vim.opt_local.expandtab = false
    end
})


