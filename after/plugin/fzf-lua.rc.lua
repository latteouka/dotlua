require('fzf-lua').setup({ 'fzf-vim' })

local keymap = vim.keymap
keymap.set('n', '<Leader>qf', ':FzfLua lsp_code_actions<cr>')
