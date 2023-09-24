return {
    "folke/todo-comments.nvim",

    keys = {
        -- {
        --     "<leader>xO",
        --     "<cmd>TodoLocList keywords=oat<cr>",
        --     desc = "show oat in this project",
        -- },
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
            oat = { icon = "", color = "#505050" },
        },
    },
}
