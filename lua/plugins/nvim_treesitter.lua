return {
    -- add more treesitter parsers
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            "cpp",
            "css",
            "git_config",
            "gitcommit",
            "gitignore",
            "glsl",
            "kdl",
            "java",
            "latex",
            "norg",
            "org",
            "r",
        },
    },
}
