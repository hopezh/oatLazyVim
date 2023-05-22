return {
    "ggandor/flit.nvim",

    config = function()
        require("flit").setup({
            -- active in normal[n], operator[o],or visual[v] mode
            labeled_modes = "nv",
        })
    end,
}
