return {
    "nvim-tree/nvim-tree.lua",

    version = "*",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    keys = {
        {
            "<leader>e",
            "<cmd>NvimTreeToggle<CR>",
            desc = "Toggle NvimTree",
        },
    },

    config = function()
        require("nvim-tree").setup({
            view = {
                -- side = "right",
                adaptive_size = true,
                float = {
                    enable = true,
                    open_win_config = {
                        relative = "editor",
                        border = "rounded",
                        -- width = 30,
                        height = 55,
                        -- row = 10,
                        -- col = 1,
                    },
                },
            },

            renderer = {
                highlight_git = true,
                highlight_opened_files = "icon",
                highlight_modified = "icon",

                indent_markers = {
                    enable = true,
                    inline_arrows = true,
                    icons = {
                        corner = "└",
                        edge = "│",
                        item = "│",
                        bottom = "─",
                        none = " ",
                    },
                },

                icons = {
                    webdev_colors = true,
                    git_placement = "signcolumn",
                    glyphs = {
                        folder = {
                            arrow_closed = "", -- arrow when folder is closed
                            arrow_open = "", -- arrow when folder is open
                        },
                    },
                    show = {
                        git = true,
                    },
                },
            },

            -- disable window_picker for explorer to work well with window splits --------
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                    resize_window = true,
                },
            },

            diagnostics = {
                enable = true,
                show_on_dirs = true,
                icons = {
                    hint = "",
                    info = "",
                    warning = "",
                    error = "",
                },
            },

            filters = {
                dotfiles = false,
            },

            git = {
                ignore = false,
            },
        })
    end,
}
