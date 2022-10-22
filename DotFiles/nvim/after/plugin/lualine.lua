-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- configure lualine with modified theme
local config = {
	options = {
		-- Disable sections and component separators
		component_separators = "",
		section_separators = "",

		theme = "sonokai",
		-- theme = "catppuccin",
	},
}

lualine.setup(config)
