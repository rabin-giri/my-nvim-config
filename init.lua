vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.splitbelow=true
vim.opt.splitright=true
vim.opt.wrap=false
vim.opt.expandtab=true
vim.opt.tabstop=4
vim.opt.clipboard="unnamedplus"
vim.opt.scrolloff=999

require("config.lazy")

--vim.api.nvim_create_autocmd("BufEnter", {
--	callback=function()
--		vim.lsp.start({
--		name="clangd",
--		cmd={"/usr/bin/clangd"},
--		root_dir=vim.fn.getcwd(),
--		})
--	end,
--})





























