return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			debug = true,
			sources = {
				-- ✅ Formatting
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd.with({
					filetypes = { "javascript", "typescript", "json", "astro", "css", "scss", "html", "vue", "svelte" },
				}),
				null_ls.builtins.formatting.prettier,

				-- ✅ ESLint
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format()
			vim.cmd("w")
		end, {})
	end,
}
