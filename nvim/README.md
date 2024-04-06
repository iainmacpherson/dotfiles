# Custom nvim setup information

## Support for new languages
* LSP:
    * Add the language to the `ensure_installed` field in `mason.lua`. (check available languages with :Mason). May require installing additional tools.
    * After adding the language server with Mason it needs to be configured and enabled in lspconfig.lua. A minimal config could look like:
        ```lua
        lspconfig["server_name"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        ```
* Treesitter syntax: Add the file to the `ensure_installed` field in `nvim-treesitter.lua`.

## Command Palette
The command palette is implemented with Legendary.nvim and can be accessed with `<C-p>`.
All commands are defined in the `legendary.lua` file. New commands can be added there.

