return {
    "goolord/alpha-nvim",
    config = function ()
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'
        dashboard.section.header.val = {
            "                                                     ",
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            "                                                     ",
        }
        dashboard.section.buttons.val = {
            dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
            dashboard.button("<Leader>ee", "  Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
            dashboard.button("<Leader>ff", "󰱼  Find File", "<cmd>Telescope find_files hidden=true no_ignore=true<CR>"),
            dashboard.button( "q", "󰅚  Quit" , ":qa<CR>"),
        }

        dashboard.config.opts.noautocmd = true

        vim.cmd[[autocmd User AlphaReady echo 'ready']]

        alpha.setup(dashboard.config)
    end
}
