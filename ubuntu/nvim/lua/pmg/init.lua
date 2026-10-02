require("pmg.remap")
require("pmg.treesitter")
require("pmg.set")
require("pmg.coc")
require("pmg.indent")
require("pmg.lualine")
require("pmg.devicons")
require("pmg.comment")
require("pmg.alphanvim")
require("pmg.telescope")
require("pmg.flow")
require("pmg.nightfox")
require("bufferline").setup{}
-- Define the list of dark themes you want to cycle through
local dark_themes = {
    "carbonfox",
    "gruvbox",
    "onedark",
    "nightfox",
    "oxocarbon",
    "srcery",
    "cyberdream",
    "flow"
}

local current_theme_index = 1

-- Function to cycle to the next theme
local function cycle_dark_themes()
    -- Increment index, wrap around to 1 if at the end
    current_theme_index = current_theme_index + 1
    if current_theme_index > #dark_themes then
        current_theme_index = 1
    end

    local new_theme = dark_themes[current_theme_index]
    
    -- Apply the theme
    vim.cmd("colorscheme " .. new_theme)
    
    -- Optional: Notify the user which theme is active
    vim.notify("Theme changed to: " .. new_theme, vim.log.levels.INFO)
end

-- Create the keymap
vim.keymap.set("n", "<leader>ct", cycle_dark_themes, { desc = "Cycle Dark Themes" })
