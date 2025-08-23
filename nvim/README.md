# Custom nvim setup information

## Support for new languages
* LSP:
    * Add the language to the `ensure_installed` field in `mason.lua`. (check available languages with :Mason). May require installing additional tools.
    * After adding the language server with Mason it needs to be enabled and configured.
        * Enable the LSP by adding it to the list in lsp/init.lua
        * Add a new config call in lsp/init.lua for small changes to the defaults. For example adding code completion capabilities.
          Neovim will also look in the lsp directory for lsp/<name>.lua to find language specific configs, so large changes can have their own file.
        * Example minimal configuration:
            ```
            vim.lsp.config("lua_ls", {
                capabilities = cmp_capabilities,
            })
            ```
* Treesitter syntax: Add the file to the `ensure_installed` field in `nvim-treesitter.lua`.


## Command Palette
The command palette is implemented with Legendary.nvim and can be accessed with `<C-p>`.
All commands are defined in the `legendary.lua` file. New commands can be added there.

