-- Custom key mappings
local function mapKey(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Creating splits
mapKey('n', "<Leader>sv", ":vs<CR>", {desc = "Split vertically"})
mapKey('n', "<Leader>sh", ":sp<CR>", {desc = "Split horizontally"})

-- Buffer navigation
mapKey('n', "<A-h>", "<C-w>h", {desc = "Change buffer"})
mapKey('n', "<A-l>", "<C-w>l", {desc = "Change buffer"})
mapKey('n', "<A-j>", "<C-w>j", {desc = "Change buffer"})
mapKey('n', "<A-k>", "<C-w>k", {desc = "Change buffer"})

-- Tab navigation
mapKey('n', "<Leader><Tab>1", "1gt", {desc = "Change tab"})
mapKey('n', "<Leader><Tab>2", "2gt", {desc = "Change tab"})
mapKey('n', "<Leader><Tab>3", "3gt", {desc = "Change tab"})
mapKey('n', "<Leader><Tab>4", "4gt", {desc = "Change tab"})
mapKey('n', "<Leader><Tab>5", "5gt", {desc = "Change tab"})
mapKey('n', "<Leader><Tab>6", "6gt", {desc = "Change tab"})
mapKey('n', "<Leader><Tab>7", "7gt", {desc = "Change tab"})
mapKey('n', "<Leader><Tab>8", "8gt", {desc = "Change tab"})
mapKey('n', "<Leader><Tab>9", "9gt", {desc = "Change tab"})
mapKey('n', "<Leader><Tab>+", ":tabnew<CR>", {desc = "Create a new tab."})

-- Make copy and paste work on windows
--if vim.fn.has("win32") == 1 then
--    mapKey('n', '<C-c>', '"*y')
--    mapKey('n', '<C-v>', '"*p')
--end

