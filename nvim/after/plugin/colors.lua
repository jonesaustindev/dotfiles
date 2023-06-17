function Color(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- Set transparency
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	-- Set transparency for floating windows
	vim.api.nvim_command("autocmd ColorScheme * highlight FloatBorder guibg=NONE ctermbg=NONE")
	vim.api.nvim_command("autocmd ColorScheme * highlight NormalFloat guibg=NONE ctermbg=NONE")

	-- Set transparency for the sidebar (VertSplit)
	vim.api.nvim_command("autocmd ColorScheme * highlight VertSplit guibg=NONE ctermbg=NONE")
end

Color()
