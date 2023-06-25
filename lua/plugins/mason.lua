return {

    "williamboman/mason.nvim",

    opts = {
        ensure_installed = {
            "black",
            "pyright",
            "stylua",
            "shellcheck",
            "shfmt",
            "flake8",
        },
    },
}
