return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = {
            contrast = "hard", -- makes transparency work with non transparent windows 
        }
    },
    {
        "https://github.com/sainnhe/gruvbox-material",
        name = "gruvbox",
        priority = 1000,
        lazy = false,
    },
}
