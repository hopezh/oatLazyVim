return {
    "nvim-telescope/telescope.nvim",

    opts = {
        -- change some default options
        defaults = {
            layout_strategy = "horizontal",
            layout_config = {
                prompt_position = "top",
                preview_width = 100,
            },
            sorting_strategy = "ascending",
            winblend = 0,
        },

        pickers = {
            find_files = { hidden = true }, -- show hidden files in search
        },
    },
}
