return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
        { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer Local Keymaps (which-key)" },
    },
    opts = {
        plugins = {
            marks = true,
            registers = true,
            spelling = {
                enabled = true,
                suggestions = 20,
            },
        },
        win = {
            border = "single", -- "none", "single", "double", "shadow"
            padding = { 1, 2 },
        },
        layout = {
            height = { min = 4, max = 25 },
            width = { min = 20, max = 50 },
        },
    },
}

