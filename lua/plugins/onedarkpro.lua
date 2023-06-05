return {
    "olimorris/onedarkpro.nvim",
    enabled = false,

    priority = 1000, -- unsure it loads first

    config = function()
        require("onedarkpro").setup({
            --
        })
    end,
}
