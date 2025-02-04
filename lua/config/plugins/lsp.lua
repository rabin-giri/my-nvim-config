return{

	{
		"neovim/nvim-lspconfig",
	},

	{
		"williamboman/mason.nvim",
    		config = function()
      			require("mason").setup()
			vim.api.nvim_set_keymap('n', '<Leader>m', ':Mason<CR>', { noremap = true, silent = true })
    		end,
	},
	{
    		"williamboman/mason-lspconfig.nvim",
		dependencies={"mason.nvim"},
    		config = function()
			require("mason-lspconfig").setup()
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})
    		end,
  	},

} 
