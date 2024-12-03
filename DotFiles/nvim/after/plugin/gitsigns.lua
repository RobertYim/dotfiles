-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
    return
end

local options = {
    signs = {
        add = { text = "│" },
        change = { text = "│" },
        delete = { text = "" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
    },
}

-- configure/enable gitsigns
gitsigns.setup(options)
