return {
    {
        "quarto-dev/quarto-nvim",

        dependencies = {
            "hrsh7th/nvim-cmp",
            "neovim/nvim-lspconfig",
            {
                "jmbuhr/otter.nvim",
                config = function()
                    require("otter.config").setup({
                        lsp = {
                            hover = {
                                border = require("misc.style").border,
                            },
                        },
                    })
                end,
            },
        },

        keys = {
            {
                "<leader>qp",
                "<CMD>QuartoPreview<CR>",
                desc = "Quarto Preview",
            },
        },

        config = function()
            require("quarto").setup({
                debug = false,

                closePreviewOnExit = true,

                lspFeatures = {
                    enabled = true,
                    languages = { "r", "python", "julia", "bash", "lua", "html" },
                    chunks = "curly", -- 'curly' or 'all'
                    diagnostics = {
                        enabled = true,
                        triggers = { "BufWritePost" },
                    },
                    completion = {
                        enabled = true,
                    },
                },

                keymap = {
                    hover = "K",
                    definition = "gd",
                    rename = "<leader>cr",
                    references = "gr",
                },
            })
        end,
    },

    -- send code from python/r/qmd documets to a terminal or REPL
    -- like ipython, R, bash
    { "jpalardy/vim-slime" },

    -- paste an image to markdown from the clipboard
    -- :PasteImg,
    { "ekickx/clipboard-image.nvim" },
}
