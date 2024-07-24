require("ibl").setup { enabled = false }

-- toggle with <Leader> + l
vim.keymap.set('n', '<Leader>l', ':IBLToggle<CR>')
