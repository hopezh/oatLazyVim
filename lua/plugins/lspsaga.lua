return {
    "nvimdev/lspsaga.nvim",

    config = function()
        require("lspsaga").setup({
            -- configs here
        })
    end,

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
}
