require('chun.base')
require('chun.highlights')
require('chun.maps')
require('chun.plugins')

-- vim.cmd [[colorscheme tokyonight]]

-- temporary solution for disabling semantic highlighting in nvim 0.9
-- local links = {
--   ['@lsp.type.namespace'] = '@namespace',
--   ['@lsp.type.type'] = '@type',
--   ['@lsp.type.class'] = '@type',
--   ['@lsp.type.enum'] = '@type',
--   ['@lsp.type.interface'] = '@type',
--   ['@lsp.type.struct'] = '@structure',
--   ['@lsp.type.parameter'] = '@parameter',
--   ['@lsp.type.variable'] = '@variable',
--   ['@lsp.type.property'] = '@property',
--   ['@lsp.type.enumMember'] = '@constant',
--   ['@lsp.type.function'] = '@function',
--   ['@lsp.type.method'] = '@method',
--   ['@lsp.type.macro'] = '@macro',
--   ['@lsp.type.decorator'] = '@function',
-- }
-- for newgroup, oldgroup in pairs(links) do
--   vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
-- end
--
-- for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
--   vim.api.nvim_set_hl(0, group, {})
-- end
