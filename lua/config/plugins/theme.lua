return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Ensure it loads first
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- Options: latte, frappe, macchiato, mocha
        transparent_background = false,
        term_colors = true,
        integrations = {
          treesitter = true,
          native_lsp = { enabled = true },
          telescope = true,
          cmp = true,
          gitsigns = true,
          notify = true,
          mini = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
