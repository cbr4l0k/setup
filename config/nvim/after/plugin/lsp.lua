local lsp = require('lsp-zero').preset({
	name = 'minimal',
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
	sign_icons = {
		error = '✘',
		warn = '▲',
		hint = '⚑',
		info = ''
	},

})

lsp.setup()
