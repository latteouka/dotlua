vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

-- highlight yanked text for 200ms using the "Visual" highlight group
-- vim.cmd [[
--   augroup highlight_yank
--   autocmd!
--   au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
--   augroup END
-- ]]

-- highlight yank text
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
