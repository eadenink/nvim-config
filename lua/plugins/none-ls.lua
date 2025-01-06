return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,

				-- JavaScript/Typescript
				require("none-ls.diagnostics.eslint_d"),
				null_ls.builtins.formatting.prettier,

				-- Python
				require("none-ls.diagnostics.flake8"),
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,

				-- Golang
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,
			},
		})

		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
