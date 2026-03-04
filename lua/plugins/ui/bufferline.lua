return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    keys = function()
        local keys = {
            { "<Tab>", "<cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
            { "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },

            { "<leader>x", "<Cmd>bdelete<CR>", desc = "Close current buffer" },
            { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Close buffers to the right" },
            { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Close buffers to the left" },
            { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Close other buffers" },
        }

        for i = 1, 9 do
            table.insert(keys, {
                "<leader>" .. i,
                "<cmd>BufferLineGoToBuffer " .. i .. "<cr>",
                desc = "Go to buffer " .. i
            })
        end

        return keys
    end,
    opts = {
        options = {
            mode = "buffers", -- "tabs", "buffers"
            separator_style = "thin", -- "slant", "padded_slant", "sloped", "thin"
            always_show_bufferline = true,
            show_buffer_close_icons = false,
            show_close_icon = false,
            color_icons = true,
            numbers = "ordinal", -- "ordinal", "buffer_id"
            number_style = "superscript",
            diagnostics = "nvim_lsp",
            diagnostics_indicator = function(count, level)
                local icon = level:match("error") and " " or " "
                return " " .. icon .. count
            end,
            -- sort_by = 'extension',
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "EXPLORER",
                    text_align = "center",
                    separator = true,
                },
            },
        }
    }
}
