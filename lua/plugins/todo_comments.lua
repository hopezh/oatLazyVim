return {
    "folke/todo-comments.nvim",

    keys = {
        {
            "<leader>xo",
            "<cmd>TodoTrouble keywords=oat<cr>",
            desc = "show oat in Trouble",
        },
        {
            "<leader>so",
            "<cmd>TodoTelescope keywords=oat<cr>",
            desc = "show oat in Telescope",
        },
    },

    -- oat: add an "oat" comment keyword ---------------------------------------
    opts = {
        merge_keywords = true,
        keywords = {
            oat = { icon = "", color = "#ffa500" },
        },
    },
}
