local get_hex = require('cokeline.hlgroups').get_hl_attr

local green = vim.g.terminal_color_2
local yellow = vim.g.terminal_color_3

local space = { text = " " }

require('cokeline').setup({
  -- default_hl = {
  --   fg = function(buffer)
  --     return
  --         buffer.is_focused
  --         and get_hex('Normal', 'fg')
  --         or get_hex('Comment', 'fg')
  --   end,
  --   bg = get_hex('ColorColumn', 'bg'),
  -- },
  default_hl = {
    fg = function(buffer)
      return buffer.is_focused and nil or get_hex("Comment", "fg")
    end,
    bg = "none",
  },

  -- components = {
  --   {
  --     text = '｜',
  --     fg = function(buffer)
  --       return
  --           buffer.is_modified and yellow or green
  --     end
  --   },
  --   {
  --     text = function(buffer) return buffer.devicon.icon .. ' ' end,
  --     fg = function(buffer) return buffer.devicon.color end,
  --   },
  --   {
  --     text = function(buffer) return buffer.index .. ': ' end,
  --   },
  --   {
  --     text = function(buffer) return buffer.unique_prefix end,
  --     fg = get_hex('Comment', 'fg'),
  --     italic = true,
  --   },
  --   {
  --     text = function(buffer) return buffer.filename .. ' ' end,
  --     bold = function(buffer) return buffer.is_focused end,
  --   },
  --   {
  --     text = ' ',
  --   },
  -- },
  components = {
    space,
    {
      text = function(buffer)
        return buffer.devicon.icon
      end,
      fg = function(buffer)
        return buffer.devicon.color
      end
    },
    {
      text = function(buffer) return buffer.unique_prefix end,
      fg = get_hex('Comment', 'fg'),
      italic = true,
    },
    {
      text = function(buffer)
        return buffer.filename
      end,
      fg = function(buffer)
        if buffer.is_focused then
          return "#E8E8E8"
        end
        if buffer.is_modified then
          return "#e5c463"
        end
        -- if buffer.lsp.errors ~= 0 then
        --   return "#fc5d7c"
        -- end
      end,
    },
    {
      text = function(buffer)
        if buffer.is_readonly then
          return " 🔒"
        end
        return ""
      end
    },
    space,
  }
})
-- vim.opt.termguicolors = true
-- local get_hex = require("cokeline/utils").get_hex

-- local space = { text = " " }
-- require("cokeline").setup(
--   {
--     mappings = {
--       cycle_prev_next = true,
--     },
--     default_hl = {
--       fg = function(buffer)
--         return "#E8E8E8"
--         -- return buffer.is_focused and nil or "#E8E8E8"
--       end,
--       bg = "none",
--     },
--     components = {
--       space,
--       {
--         text = function(buffer)
--           return buffer.devicon.icon
--         end,
--         fg = function(buffer)
--           return buffer.devicon.color
--         end
--       },
--       {
--         text = function(buffer)
--           return buffer.filename
--         end,
--         fg = function(buffer)
--           if buffer.is_focused then
--             return "#E8E8E8"
--           end
--           if buffer.is_modified then
--             return "#e5c463"
--           end
--           -- if buffer.lsp.errors ~= 0 then
--           --   return "#fc5d7c"
--           -- end
--         end,
--       },
--       {
--         text = function(buffer)
--           if buffer.is_readonly then
--             return " 🔒"
--           end
--           return ""
--         end
--       },
--       space,
--     }
--   }
-- )

local keymap = vim.keymap

keymap.set('n', '<S-Tab>', '<Plug>(cokeline-focus-prev)')
keymap.set('n', '<Tab>', '<Plug>(cokeline-focus-next)')
keymap.set('n', '<A-Left>', '<Plug>(cokeline-switch-prev)')
keymap.set('n', '<A-Right>', '<Plug>(cokeline-switch-next)')
keymap.set('n', 'Q', ':bd<cr>')
