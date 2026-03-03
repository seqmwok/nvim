return {
    "rcarriga/nvim-notify",
    opts = {
        render = "minimal", -- default, minimal, simple, compact
        stages = "slide", -- fade, slide, static, fade_in_slide_out
        timeout = 3000,
        max_width = 60
    },
    config = function()
        vim.notify = require("notify")
    end,
}
