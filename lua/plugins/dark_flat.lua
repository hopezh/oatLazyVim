return {
    "sekke276/dark_flat.nvim",
    enabled = false,

    config = function()
        require("dark_flat").setup({
            transparent = true,

            colors = {},

            themes = function(colors)
                return {}
            end,

            italics = true,
        })
    end,
}
