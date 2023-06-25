return {

    "williamboman/mason.nvim",

    opts = {
        ensure_installed = {
            "black",
            "mypy",
            "ruff",
            "pyright",
            "stylua",
            "shellcheck",
            "shfmt",
            "flake8",
        },
    },
}
