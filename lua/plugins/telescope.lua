return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    cmd = "Telescope",
    keys = {
        { "<leader><leader>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    },
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-telescope/telescope-ui-select.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    init = function()
        require('telescope').load_extension('fzf')
        require("telescope").load_extension("ui-select")
    end,
    opts = {
        defaults = {
            prompt_prefix = "  ",
            selection_caret = "❯ ",
            entry_prefix = "  ",
            preview = false,
            theme = "dropdown",
            layout_strategy = "horizontal",
            layout_config = {
                width = 0.5,
                height = 0.4,
                preview_cutoff = 120,
            },
            border = false,
            mappings = {
                i = {
                    ["<Esc>"] = require('telescope.actions').close,
                    ["<C-c>"] = require('telescope.actions').close,
                },
                n = {
                    ["<Esc>"] = require('telescope.actions').close,
                },
            },
        },
        pickers = {
            find_files = {
                theme = "dropdown",
            }
        },
        extensions = {
            ["ui-select"] = {
                require("telescope.themes").get_dropdown({}),
            },
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "ignore_case", -- "smart_case", "ignore_case", "respect_case"
            }
        },
    }
}
