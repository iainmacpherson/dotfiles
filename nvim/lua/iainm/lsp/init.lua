

-- Add any supported LSPs here to enable.
vim.lsp.enable({
    "lua_ls",
    "pyright",
    "ts_ls",
    "matlab_ls",
    "clangd",
})


-- Change the Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- LSP related keymappings

local lsp_attach = function(args)
    local keymap = vim.keymap
    local opts = { noremap = true, silent = true, buffer = args.buf }

    -- set keybinds
    opts.desc = "Show LSP references"
    keymap.set("n", "<Leader>lsr", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

    opts.desc = "Show LSP definitions"
    keymap.set("n", "<Leader>lsd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

    opts.desc = "Show LSP implementations"
    keymap.set("n", "<Leader>lsi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

    opts.desc = "Show LSP type definitions"
    keymap.set("n", "<Leader>lst", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

    opts.desc = "Show buffer diagnostics"
    keymap.set("n", "<leader>lD", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

    opts.desc = "Show line diagnostics"
    keymap.set("n", "<leader>ld", vim.diagnostic.open_float, opts) -- show diagnostics for line

    opts.desc = "See code actions"
    keymap.set({ "n", "v" }, "<leader>lc", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

    opts.desc = "Smart rename"
    keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts) -- smart rename

    opts.desc = "Go to declaration"
    keymap.set("n", "<Leader>lgd", vim.lsp.buf.declaration, opts) -- go to declaration

    opts.desc = "Go to previous diagnostic"
    keymap.set("n", "<leader>lgp", function() vim.diagnostic.jump({count=-1, float=true}) end, opts) -- jump to previous diagnostic in buffer

    opts.desc = "Go to next diagnostic"
    keymap.set("n", "<Leader>lgn", function() vim.diagnostic.jump({count=1, float=true}) end, opts) -- jump to next diagnostic in buffer

    opts.desc = "Show documentation at cursor"
    keymap.set("n", "<Leader>lk", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

    opts.desc = "Restart LSP"
    keymap.set("n", "<leader>lr", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
end

vim.api.nvim_create_autocmd('LspAttach', {
    callback = lsp_attach,
})

-- Language specific LSP settings override

-- import cmp-nvim-lsp plugin
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local cmp_capabilities = cmp_nvim_lsp.default_capabilities()

vim.lsp.config("lua_ls", {
    capabilities = cmp_capabilities,
    settings = {
        Lua = {
            diagnostics = {
                -- recognize "vim" global
                globals = {"vim"},
            },
            workspace = {
                -- recognize runtime files
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
})

vim.lsp.config("pyright", {
    capabilities = cmp_capabilities,
})

vim.lsp.config("ts_ls", {
    capabilities = cmp_capabilities,
})

vim.lsp.config("matlab_ls", {
    capabilities = cmp_capabilities,
})

vim.lsp.config("clangd", {
    capabilities = cmp_capabilities,
})

