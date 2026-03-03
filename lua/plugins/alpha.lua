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
            dashboard.button("c", "  Configuration", "<cmd>e $MYVIMRC<cr>"),
            dashboard.button("l", "󰒲  Lazy Plugins", "<cmd>Lazy<cr>"),
            dashboard.button("q", "  Quit Neovim", "<cmd>qa<cr>"),
        }

        local function footer()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return "⚡ Loaded " .. stats.count .. " plugins in " .. ms .. "ms"
        end
        dashboard.section.footer.val = footer()

        dashboard.section.header.opts.hl = "AlphaHeader"
        dashboard.section.buttons.opts.hl = "AlphaButtons"
        dashboard.section.footer.opts.hl = "AlphaFooter"

        dashboard.opts.layout = {
            { type = "padding", val = 4 },
            dashboard.section.header,
            { type = "padding", val = 3 },
            dashboard.section.buttons,
            { type = "padding", val = 2 },
            dashboard.section.footer,
        }

        require("alpha").setup(dashboard.opts)
    end,
}
