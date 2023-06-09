return {
    {
        "quarto-dev/quarto-nvim",

        dependencies = {
            "jmbuhr/otter.nvim",
            "neovim/nvim-lspconfig",
        },

        config = function()
            require("quarto").setup({
                debug = false,

                closePreviewOnExit = true,

                lspFeatures = {
                    enabled = true,
                    languages = { "r", "python", "julia", "bash" },
                    chunks = "curly", -- 'curly' or 'all'
                    diagnostics = {
                        enabled = true,
                        triggers = { "BufWritePost" },
                    },
                    completion = {
                        enabled = true,
                    },
                },

                -- keymap = {
                --     hover = 'K',
                --     definition = 'gd',
                --     rename = '<leader>lR',
                --     references = 'gr',
                -- }
            })
        end,
    },

    -- send code from qmd doc to terminal
    { "jpalardy/vim-slime" },
    { "ekickx/clipboard-image.nvim" },
}
