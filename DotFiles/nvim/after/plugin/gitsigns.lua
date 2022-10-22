-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

local options = {
	signs = {
		add = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr" },
		change = { hl = "GitSignsChange", text = "│", numhl = "GitSignsChangeNr" },
		delete = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr" },
		topdelete = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr" },
		changedelete = { hl = "GitSignsChangeDelete", text = "~", numhl = "GitSignsChangeNr" },
	},
}

-- configure/enable gitsigns
gitsigns.setup(options)
