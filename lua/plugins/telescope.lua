return {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",

            "nvim-telescope/telescope-frecency.nvim",
        },
        config = function()
            require("telescope").setup({
                defaults = {
                    layout_strategy = 'vertical',
                    layout_config = {
                        width =  0.7,
                    },
                },
            })
            require("telescope").load_extension( "frecency" )
        end
}
