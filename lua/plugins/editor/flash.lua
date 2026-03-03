return {
    "folke/flash.nvim",
    event = "VeryLazy",
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
    opts = {
        jump = {
            autojump = true,
        },
        label = {
            style = "inline",
            rainbow = { enabled = true },
        },
        modes = {
            search = {
                enabled = true,
            },
        },
    }
}
