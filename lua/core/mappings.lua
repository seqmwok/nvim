local map = vim.keymap.set

-- Discipline
-- for _, key in ipairs({ '<Up>', '<Down>', '<Left>', '<Right>' }) do
--     map({ 'n', 'i', 'v' }, key, '<nop>', { silent = true })
-- end

-- Essentials
map('n', ';', ':')
map({ 'i', 'v' }, 'jk', '<ESC>')
map('n', '<Esc>', '<cmd>noh<cr>', { silent = true })

-- File operations
map('n', '<leader>w', '<cmd>w<cr>',   { desc = 'Save' })
map('n', '<leader>q', '<cmd>q<cr>',   { desc = 'Quit' })
map('n', '<leader>Q', '<cmd>q!<cr>',  { desc = 'Force quit' })
map('n', '<leader>z', '<cmd>wq<cr>',  { desc = 'Save and quit' })

-- Movement (Insert mode)
map('i', '<C-h>', '<Left>')
map('i', '<C-l>', '<Right>')
map('i', '<C-j>', '<Down>')
map('i', '<C-k>', '<Up>')

-- Movement (Visual mode)
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

-- Window management
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Window resizing
map('n', '<C-Up>',    '<cmd>resize +2<cr>')
map('n', '<C-Down>',  '<cmd>resize -2<cr>')
map('n', '<C-Left>',  '<cmd>vertical resize -2<cr>')
map('n', '<C-Right>', '<cmd>vertical resize +2<cr>')

-- Scrolling & Search (Centered)
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n',     'nzzzv')
map('n', 'N',     'Nzzzv')
