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
            -- change panel width by length of path --------------------------------------
            view = {
                adaptive_size = true,
                float = {
                    enable = false,
                    open_win_config = {
                        relative = "editor",
                        border = "rounded",
                        width = 30,
                        height = 30,
                        row = 10,
                        col = 1,
                    },
                },
            },

            -- change folder arrow icons -------------------------------------------------
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
                            arrow_closed = "", -- arrow when folder is closed
                            arrow_open = "", -- arrow when folder is open
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

            diagnositcs = {
                enable = true,
                show_on_dirs = true,
                icons = {
                    hint = "",
                    info = "",
                    warning = "",
                    error = "",
                },
            },

            -- 	git = {
            -- 		ignore = false,
            -- 	},
        })
    end,
}
