function SetColorScheme(color) -- Color is the selected colorscheme
	color = color or 'moonfly'
    vim.opt.background = 'dark'
    vim.cmd.syntax('enable')
	vim.cmd.colorscheme(color)

    -- Transparent bg
    -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

SetColorScheme('moonfly')
