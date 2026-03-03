return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    cmd = "Telescope",
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-telescope/telescope-ui-select.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    keys = {
        { "<leader><leader>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    },
    config = function(_, opts)
        local telescope = require("telescope")
        telescope.setup(opts)
        telescope.load_extension("fzf")
        telescope.load_extension("ui-select")
    end,
    opts = function()
        local actions = require("telescope.actions")

        return {
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
                border = true,
                mappings = {
                    i = {
                        ["<Esc>"] = actions.close,
                        ["<C-c>"] = actions.close,
                    },
                    n = {
                        ["<Esc>"] = actions.close,
                    },
                },
            },
            pickers = {
                find_files = {
                    theme = "dropdown",
                    previewer = false,
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
                    case_mode = "ignore_case",
                }
            },
        }
    end
}
