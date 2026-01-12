-- vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"

require("ibl").setup {
    indent = {
        -- This prevents it from recalculating everything constantly
        smart_indent_cap = true, 
    },
    scope = {
        -- Disabling "scope" highlighting saves a huge amount of CPU
        enabled = false, 
    },
}
