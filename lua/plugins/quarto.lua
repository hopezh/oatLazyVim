return {

    -- -------------------------------------------------------------------------
    -- this taps into vim.ui.select and vim.ui.input
    -- and in doing so currently breaks renaming in otter.nvim
    -- so, dressing,nvim needs to be disabled
    { "stevearc/dressing.nvim", enabled = false },

    {
        "quarto-dev/quarto-nvim",

        dev = false,

        ft = "quarto",

        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/nvim-cmp",
            "jmbuhr/otter.nvim",
            "nvim-treesitter/nvim-treesitter",
        },

        keys = {
            {
                "<leader>qp",
                "<CMD>QuartoPreview<CR>",
                desc = "Quarto Preview",
            },
        },

        opts = {
            -- debug = false,
            -- closePreviewOnExit = true,

            lspFeatures = {
                -- enabled = true,
                languages = { "r", "python", "julia", "bash", "lua", "html" },
                -- chunks = "curly", -- 'curly' or 'all'
                -- diagnostics = {
                --     enabled = true,
                --     triggers = { "BufWritePost" },
                -- },
                -- completion = {
                --     enabled = true,
                -- },
            },

            keymap = {
                -- hover = "K",
                -- definition = "gd",
                -- rename = "<leader>lR",
                rename = "<leader>cr",
                -- references = "gr",
            },
        },
    },

    -- config of dependencies --------------------------------------------------
    {
        "jmbuhr/otter.nvim",
        opts = {
            buffers = {
                set_filetype = true,
            },
        },
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = { "jmbuhr/otter.nvim" },
        opts = function(_, opts)
            ---@param opts cmp.ConfigSchema
            local cmp = require("cmp")
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "otter" } }))

            -- link quarto and rmarkdown to markdown snippets
            local luasnip = require("luasnip")
            luasnip.filetype_extend("quarto", { "markdown" })
            luasnip.filetype_extend("rmarkdown", { "markdown" })
        end,
    },

    -- send code from python/r/qmd documets to a terminal or REPL
    -- like ipython, R, bash
    {
        "jpalardy/vim-slime",
        init = function()
            vim.b["quarto_is_" .. "python" .. "_chunk"] = false

            Quarto_is_in_python_chunk = function()
                require("otter.tools.functions").is_otter_language_context("python")
            end

            vim.cmd([[
                let g:slime_dispatch_ipython_pause = 100
                function SlimeOverride_EscapeText_quarto(text)
                    call v:lua.Quarto_is_in_python_chunk()
                    if exists('g:slime_python_ipython') && len(split(a:text,"\n")) > 1 && b:quarto_is_python_chunk
                    return ["%cpaste -q\n", g:slime_dispatch_ipython_pause, a:text, "--", "\n"]
                    else
                    return a:text
                    end
                endfunction
            ]])

            local function mark_terminal()
                vim.g.slime_last_channel = vim.b.terminal_job_id
                vim.print(vim.g.slime_last_channel)
            end

            local function set_terminal()
                vim.b.slime_config = { jobid = vim.g.slime_last_channel }
            end

            -- slime, neovvim terminal
            vim.g.slime_target = "neovim"
            vim.g.slime_python_ipython = 1

            require("which-key").register({
                -- the following keymaps are in conflict with lazyvim
                -- ["<leader>cm"] = { mark_terminal, "mark terminal" },
                -- ["<leader>cs"] = { set_terminal, "set terminal" },
            })
        end,
    },

    -- paste an image to markdown from the clipboard
    -- :PasteImg,
    { "ekickx/clipboard-image.nvim" },
}
