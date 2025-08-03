return {
	{
		"folke/tokyonight.nvim",
		lazy = false, -- load on start-up
		priority = 1000, -- load before anything that needs colors
		opts = {
			style = "storm", -- or "storm" | "moon" | "day"
			on_colors = function(c) -- ← adjust the palette
				c.bg = "#181818" -- darker background
				c.bg_dark = "#252525" -- pop-up menus / sidebars
				c.magenta = "#71d2dd" -- keywords
				c.yellow = "#F8D265" -- strings
				c.comment = "#454441"
				c.blue = "#ffffff"
				c.fg_gutter = "#627f64"
				c.blue1 = "#537DC9"
				c.green = "#A7D291"
				-- leave the rest unchanged
			end,
			on_highlights = function(hl, c) -- ← optional, per-group tweaks
				hl.CursorLine = { bg = c.bg_dark }
				hl.LineNr = { fg = c.blue }
				-- e.g. hl.Comment   = { fg = "#6c7086", italic = true }
			end,
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	},
}
