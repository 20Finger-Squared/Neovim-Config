return {
    'stevearc/aerial.nvim',
    opts = {
        highlight_on_hover = true,
        autofold_depth = 1,

        filter_kind = {
            "Object",
            "Method",
            "Field",
            "Variable",
            -- defualts
            "Class",
            "Constructor",
            "Enum",
            "Function",
            "Interface",
            "Module",
            "Method",
            "Struct",
        },
    },

    dependencies = {
        "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons"
    },
}
