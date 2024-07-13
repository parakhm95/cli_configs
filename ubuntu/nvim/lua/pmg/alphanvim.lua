-- require'alpha'.setup(require'alpha.themes.startify'.config)
-- dashboard.section.buttons.val = {
-- 			dashboard.button("c", "   Configuration", ":e ~/.config/nvim/lua/user/config.lua<CR>"),
-- 			dashboard.button("b", "   Configuration", ":e ~/.zshrc<CR>"),
-- 		}
local alpha = require("alpha")
local startify = require("alpha.themes.startify")
local dashboard = require("alpha.themes.dashboard")

-- Set header
startify.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- Set menu
-- dashboard.section.buttons.val = {
--     dashboard.button( "b", "  > settings" , ":e ~/.zshrc<cr>"),
--     dashboard.button( "q", "  > quit nvim", ":qa<cr>"),
--     dashboard.button( "c", "  > configuration nvim", ":e /home/pmg/git/cli_configs<cr>"),
-- }
startify.section.top_buttons.val = {
    startify.button( "b", "  > Zsh Config" , ":e ~/.zshrc<CR>"),
    startify.button( "q", "  > Quit NVIM", ":qa<CR>"),
    startify.button( "c", "  > Configuration NVIM", ":e /home/pmg/git/cli_configs<CR>"),
    startify.button( "e", "New file", "<cmd>ene <CR>"),
}
alpha.setup(startify.opts)
