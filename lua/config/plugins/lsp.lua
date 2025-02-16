return {
        {
                "williamboman/mason.nvim",
                config = function()
                        require("mason").setup()
                        vim.api.nvim_set_keymap("n", "<leader>m", ":Mason<CR>", { noremap = true, silent = false })
                end,
        },
        {
                "williamboman/mason-lspconfig.nvim",
                lazy=false,
                opts={
                        auto_install=true
                },
                dependencies = { "mason.nvim" },
                config = function()
                        require("mason-lspconfig").setup()
                        --require("mason-lspconfig").setup_handlers({
                        --        function(server_name)
                        --                require("lspconfig")[server_name].setup({})
                        --        end,
                        --})
                end,
        },
         {
                "neovim/nvim-lspconfig",
                lazy=false,
                config = function()
                        local capabilities=require('cmp_nvim_lsp').default_capabilities()
                        local lspconfig=require('lspconfig')
                        lspconfig.lua_ls.setup({
                                capabilities=capabilities
                        })
                        lspconfig.clangd.setup({
                                 capabilities=capabilities
                        })
                        lspconfig.asm-lsp.setup({
                                 capabilities=capabilities
                        })
                        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
                        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
                        vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
                end,
        },
}
