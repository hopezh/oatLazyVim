return {
    "ggandor/flit.nvim",

    config = function()
        require("flit").setup({
            -- normal[n], operator[o],or visual[v] mode
            labeled_modes = "nv", -- activate in normal, & visual modes only
        })
    end,
}
