return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button("f", "  Find file", "<cmd>Telescope find_files<cr>"),
            dashboard.button("n", "  New file", "<cmd>ene <BAR> startinsert <cr>"),
            dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<cr>"),
            dashboard.button("g", "  Find text", "<cmd>Telescope live_grep<cr>"),
            dashboard.button("c", "  Config", "<cmd>e $MYVIMRC<cr>"),
            dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<cr>"),
            dashboard.button("q", "  Quit", "<cmd>qa<cr>"),
        }

        for _, button in ipairs(dashboard.section.buttons.val) do
            button.opts.hl = "AlphaButtons"
            button.opts.hl_shortcut = "AlphaShortcut"
        end
        dashboard.section.header.opts.hl = "AlphaHeader"
        dashboard.section.footer.opts.hl = "AlphaFooter"

        local function center_padding()
            return math.max(0, math.floor(vim.o.lines * 0.2))
        end

        dashboard.opts.layout = {
            { type = "padding", val = center_padding },
            dashboard.section.header,
            { type = "padding", val = 2 },
            dashboard.section.buttons,
            { type = "padding", val = 2 },
            dashboard.section.footer,
        }

        require("alpha").setup(dashboard.opts)
    end,
}
