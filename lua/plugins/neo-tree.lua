return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Explorer" },
        { "<leader>E", "<cmd>Neotree focus<CR>", desc = "Focus Explorer" },
    },
    config = function(_, opts)
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("neo-tree").setup(opts)
    end,
    opts = {
        close_if_last_window = true,
        popup_border_style = "rounded",
        window = {
            width = 40,
            mappings = {
                ["<space>"] = "none",
                ["s"] = "open_split",
                ["v"] = "open_vsplit",
            },
        },

        enable_git_status = true,
        enable_diagnostics = false,

        filesystem = {
            follow_current_file = { enabled = true },
            use_libuv_file_watcher = true,
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_hidden = false,
            },
        },

        buffers = {
            follow_current_file = { enabled = true },
        },
    },
}
