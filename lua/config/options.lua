local map = vim.keymap.set




map("i","jk","<Esc>",{desc="shortcut key for esc in insert mode"})

------------------telescope keymap setting------------------------
local builtin = require 'telescope.builtin'
map('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
map('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
map('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
map('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
map('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
map('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
map('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
map('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
map('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
map('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

-- Slightly advanced example of overriding default behavior and theme
map('n', '<leader>/', function()
        -- You can pass additional configuration to Telescope to change the theme, layout, et
	 builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		 winblend = 10,
		 previewer = false,
	 })
end, { desc = '[/] Fuzzily search in current buffer' })

-- It's also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
map('n', '<leader>s/', function()
	builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
}
end, { desc = '[S]earch [/] in Open Files' })

-- Shortcut for searching your Neovim configuration files
map('n', '<leader>sn', function()
	builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })

--------------------------------------------------------------------------------
----------------------------NvimTree keymap setting----------------------------
---noremap=true prevents recursive mappings
---slient=true prevents command display in the command line
map("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
------------------------------------------------------------------------------

