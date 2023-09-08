function Color(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	-- -- Set transparency
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	--
	-- -- Set transparency for floating windows
	-- vim.api.nvim_command("autocmd ColorScheme * highlight FloatBorder guibg=NONE ctermbg=NONE")
	-- vim.api.nvim_command("autocmd ColorScheme * highlight NormalFloat guibg=NONE ctermbg=NONE")
	--
	-- -- Set transparency for the sidebar (VertSplit)
	-- vim.api.nvim_command("autocmd ColorScheme * highlight VertSplit guibg=NONE ctermbg=NONE")
	--
	-- -- Set transparency for the active buffer
	-- vim.api.nvim_command("autocmd ColorScheme * highlight NormalNC guibg=NONE ctermbg=NONE")
	--
	-- -- Set transparency for the inactive buffer
	-- vim.api.nvim_command("autocmd ColorScheme * highlight Inactive guibg=NONE ctermbg=NONE")
	--
	-- -- Set transparency for the statusline and tabline
	-- vim.api.nvim_command("autocmd ColorScheme * highlight StatusLineNC guibg=NONE ctermbg=NONE")
	--
	-- -- Set transparency for the floating window border
	-- vim.api.nvim_command("autocmd ColorScheme * highlight FloatBorder guibg=NONE ctermbg=NONE")
	--
	-- -- Set background color for buffers in vertical splits
	-- vim.api.nvim_command("autocmd WinEnter,BufEnter * hi VertSplit guibg=#333333 ctermbg=0")
	-- vim.api.nvim_command("autocmd WinLeave,BufLeave * hi VertSplit guibg=NONE ctermbg=NONE")
end

Color()
