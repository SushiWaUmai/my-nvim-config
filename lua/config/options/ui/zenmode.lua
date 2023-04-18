return {
	opts = {
		{
			window = {
				width = 0.85,  -- width will be 85% of the editor width
				backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
				-- uncomment any of the options below, or add other vim.wo options you want to apply
				options = {
					-- signcolumn = "no", -- disable signcolumn
					-- number = false, -- disable number column
					-- relativenumber = false, -- disable relative numbers
					-- cursorline = false, -- disable cursorline
					-- cursorcolumn = false, -- disable cursor column
					-- foldcolumn = "0", -- disable fold column
					-- list = false, -- disable whitespace characters
				},
			},
			plugins = {
				-- disable some global vim options (vim.o...)
				-- comment the lines to not apply the options
				options = {
					enabled = true,
					ruler = false,            -- disables the ruler text in the cmd line area
					showcmd = false,          -- disables the command in the last line of the screen
				},
				twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
				gitsigns = { enabled = false }, -- disables git signs
				tmux = { enabled = true },  -- disables the tmux statusline
			},
		}
	}
}
