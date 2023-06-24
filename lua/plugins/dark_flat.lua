return {
    "sekke276/dark_flat.nvim",

    config = function()
        require("dark_flat").setup({
            transparent = false,

            colors = {},

            themes = function(colors)
                return {}
            end,

            italics = true,
        })
    end,
}
