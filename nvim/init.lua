-- Config Entry Point

--[[ TODO
-- Clean up plugin mappings for which-key
-- Add commands for less frequently used keybindings to reduce key clutter
--]]

--[[ Wishlist
-- Ctrl P style commands (legendary.nvim?)
--]]

-- set the leader key before everything else
vim.g.mapleader = ';'

require("iainm.core")
require("iainm.lazy")

