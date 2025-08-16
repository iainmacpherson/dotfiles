-- Config Entry Point

-- Disable depreciation warnings. This might mask issues.
vim.deprecate = function() end

-- set the leader key before everything else
vim.g.mapleader = ';'

require("iainm.core")
require("iainm.lazy")

