local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end

local cmp_keymap_status_ok, cmp_keymap = pcall(require, "user.keymap.cmp")
if not cmp_keymap_status_ok then
	return
end

local cmp_lsp_status_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_lsp_status_ok then
	return
end

local luasnip_status_ok, luasnip = pcall(require, "luasnip")
if not luasnip_status_ok then
	return
end

cmp.setup({
	completion = {
		autocomplete = false,
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp_keymap,
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
})

-- for searching
cmp.setup.cmdline("/", {
	sources = {
		{ name = "buffer" },
	},
})

-- for vim commands
cmp.setup.cmdline(":", {
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

-- Setup lspconfig.
local capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

return capabilities
