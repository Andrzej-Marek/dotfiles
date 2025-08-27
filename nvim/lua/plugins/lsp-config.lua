return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local util = require("lspconfig.util")

			local lspconfig = require("lspconfig")

			lspconfig.vtsls.setup({
				capabilities = capabilities,
				root_dir = util.root_pattern("tsconfig.base.json", "package.json", "tsconfig.json", ".git"),
				settings = {
					typescript = {
						tsserver = {
							maxTsServerMemory = 8192,
						},
						preferences = {
							importModuleSpecifierPreference = "non-relative",
						},
					},
					javascript = {
						preferences = {
							importModuleSpecifierPreference = "non-relative",
						},
					},
				},
			})

			vim.lsp.config("vtsls", {
				reuse_client = function()
					return true
				end,
			})

			lspconfig.solargraph.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.eslint.setup({
				cmd = { "vscode-eslint-language-server", "--stdio" },
				filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" },
				on_attach = function(client, bufnr)
					-- Enable formatting capability
					client.server_capabilities.documentFormattingProvider = true

					-- Auto-fix on save
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						command = "EslintFixAll",
					})
				end,
				settings = {
					validate = "on",
					packageManager = "npm",
					format = true,
					codeActionOnSave = {
						enable = true,
						mode = "all",
					},
					run = "onType",
					workingDirectory = {
						mode = "location",
					},
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
		end,
	},
}
