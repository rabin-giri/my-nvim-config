return {
	"nvim-neo-tree/neo-tree.nvim",
    branch="v3.x",
  	dependencies = { 
            "nvim-tree/nvim-web-devicons",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
    },
    config=function()
            require("neo-tree").setup({
                    winbar=false,
                    statusline=false,
            })
    end, 
}
