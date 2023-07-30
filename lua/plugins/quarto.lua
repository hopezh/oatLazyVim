return {
    {
        "quarto-dev/quarto-nvim",

        dev = false,

        ft = "quarto",

        dependencies = {
            "neovim/nvim-lspconfig",
            "jmbuhr/otter.nvim",
            "hrsh7th/nvim-cmp",
        },

        opts = {
            lspFeatures = {
                languages = { "r", "python", "julia", "bash", "lua", "html" },
            },
            keymap = {
                -- rename = '<leader>lR', -- default of quarto-nvim
                rename = "<leader>cr",
            },
        },

        keys = {
            {
                "<leader>qp",
                "<CMD>QuartoPreview<CR>",
                desc = "Quarto Preview",
            },
        },
    },

    -- config for dependincies -------------------------------------------------
    {
        "jmbuhr/otter.nvim",
        opts = {},
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = { "jmbuhr/otter.nvim" },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local cmp = require("cmp")
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "otter" } }))
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
