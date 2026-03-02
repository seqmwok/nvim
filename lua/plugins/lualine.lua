return {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                theme = 'auto',
                globalstatus = true,
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                disabled_filetypes = { statusline = { 'alpha', 'lazy' } },
                ignore_focus = { 'neo-tree' },
            },
            sections = {
                lualine_a = {
                    { 'mode', padding = { left = 1, right = 1 } },
                },
                lualine_b = {
                    { 'branch', icon = '' },
                    { 'diff', symbols = { added = ' ', modified = ' ', removed = ' ' }, padding = { left = 1, right = 1 } },
                    { 'diagnostics', symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' } },
                },
                lualine_c = {
                    { 'filename', path = 1, symbols = { modified = ' ', readonly = ' ', unnamed = '󰈔 ' } },
                },
                lualine_x = { 
                    { 'filetype', icon_only = false }, 
                },
                lualine_y = {
                    { 'progress', padding = { left = 1, right = 1 } },
                },
                lualine_z = {
                    { 'location', padding = { left = 1, right = 1 } },
                },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { { 'filename', path = 1 } },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {},
            },
            extensions = { 'neo-tree', 'lazy' },
        })
    end,
}
