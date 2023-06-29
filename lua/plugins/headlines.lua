return {
    "lukas-reineke/headlines.nvim",

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },

    -- opts = {},

    opts = {
        markdown = {
            headline_highlights = {
                "Headline1",
                "Headline2",
                "Headline3",
                "Headline4",
                "Headline5",
                "Headline6",
            },
            fat_headline_upper_string = "",
            fat_headline_lower_string = "_",
        },
    },

    -- config = function()
    --     require("headlines").setup({
    --         markdown = {
    --             query = vim.treesitter.query.parse(
    --                 "markdown",
    --                 [[
    --                     (atx_heading [
    --                         (atx_h1_marker)
    --                         (atx_h2_marker)
    --                         (atx_h3_marker)
    --                         (atx_h4_marker)
    --                         (atx_h5_marker)
    --                         (atx_h6_marker)
    --                     ] @headline)
    --
    --                     (thematic_break) @dash
    --
    --                     (fenced_code_block) @codeblock
    --
    --                     (block_quote_marker) @quote
    --                     (block_quote (paragraph (inline (block_continuation) @quote)))
    --                 ]]
    --             ),
    --             -- headline_highlights = { "Headline" },
    --             headline_highlights = {
    --                 "Headline1",
    --                 "Headline2",
    --                 "Headline3",
    --                 "Headline4",
    --                 "Headline5",
    --                 "Headline6",
    --             },
    --             codeblock_highlight = "CodeBlock",
    --             dash_highlight = "Dash",
    --             dash_string = "-",
    --             quote_highlight = "Quote",
    --             quote_string = "┃",
    --             fat_headlines = true,
    --             -- fat_headline_upper_string = "▃",
    --             -- fat_headline_lower_string = "🬂",
    --             fat_headline_upper_string = "",
    --             fat_headline_lower_string = "",
    --         },
    --
    --         rmd = {
    --             query = vim.treesitter.query.parse(
    --                 "markdown",
    --                 [[
    --                     (atx_heading [
    --                         (atx_h1_marker)
    --                         (atx_h2_marker)
    --                         (atx_h3_marker)
    --                         (atx_h4_marker)
    --                         (atx_h5_marker)
    --                         (atx_h6_marker)
    --                     ] @headline)
    --
    --                     (thematic_break) @dash
    --
    --                     (fenced_code_block) @codeblock
    --
    --                     (block_quote_marker) @quote
    --                     (block_quote (paragraph (inline (block_continuation) @quote)))
    --                 ]]
    --             ),
    --             treesitter_language = "markdown",
    --             headline_highlights = { "Headline" },
    --             codeblock_highlight = "CodeBlock",
    --             dash_highlight = "Dash",
    --             dash_string = "-",
    --             quote_highlight = "Quote",
    --             quote_string = "┃",
    --             fat_headlines = true,
    --             fat_headline_upper_string = "▃",
    --             fat_headline_lower_string = "🬂",
    --         },
    --     })

    -- vim.cmd([[highlight Headline1 guibg=#1e2718]])
    -- vim.cmd([[highlight Headline2 guibg=#21262d]])
    -- vim.cmd([[highlight CodeBlock guibg=#ffff00]])
    -- vim.cmd([[highlight Dash guibg=#D19A66 gui=bold]])

    -- vim.api.nvim_set_hl(0, "Headline1", { fg = "#cb7676", bg = "#402626", italic = false })
    -- vim.api.nvim_set_hl(0, "Headline1", { fg = "#cb7676", bg = "#ffff00", italic = false })
    -- vim.api.nvim_set_hl(0, "Headline2", { fg = "#c99076", bg = "#66493c", italic = false })
    -- vim.api.nvim_set_hl(0, "Headline3", { fg = "#80a665", bg = "#3d4f2f", italic = false })
    -- vim.api.nvim_set_hl(0, "Headline4", { fg = "#4c9a91", bg = "#224541", italic = false })
    -- vim.api.nvim_set_hl(0, "Headline5", { fg = "#6893bf", bg = "#2b3d4f", italic = false })
    -- vim.api.nvim_set_hl(0, "Headline6", { fg = "#d3869b", bg = "#6b454f", italic = false })
    -- vim.api.nvim_set_hl(0, "CodeBlock", { bg = "#ffff00" })
    -- end,
}
