return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
    },
    opts = {
        default_file_explorer = true,
        columns = { "icon" },
        keymaps = {
            ["<C-c>"] = false,
            ["q"] = "actions.close",
        },
        view_options = {
            show_hidden = true,
        },
    }
}
