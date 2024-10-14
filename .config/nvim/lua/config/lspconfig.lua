vim.diagnostic.config({
	virtual_text = {
		prefix = "󰬨"
	}
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require('lspconfig')

local servers = { 'clangd', 'rust_analyzer', 'pyright', 'java_language_server', 'cmake', 'lua_ls' }
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		capabilities = capabilities,
		on_init = function(client)
			client.offset_encoding = "utf-8"
		end,
	}
end

lspconfig.lua_ls.setup {
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = {
					'vim',
					'require'
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
}


vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		if
				require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
				and not require("luasnip").session.jump_active
		then
			require("luasnip").unlink_current()
		end
	end,
})
