return {
    "olimorris/onedarkpro.nvim",

    priority = 1000, -- unsure it loads first

    config = function()
        require("onedarkpro").setup({
            --
        })
    end,
}
