# Custom nvim setup information

## Support for new languages
* LSP: Add the language to the `ensure_installed` field in `mason.lua`. (check available languages with :Mason). May require installing additional tools.
* Treesitter syntax: Add the file to the `ensure_installed` field in `nvim-treesitter.lua`.

## Command Palette
The command palette is implemented with Legendary.nvim and can be accessed with `<C-p>`.
All commands are defined in the `legendary.lua` file. New commands can be added there.

