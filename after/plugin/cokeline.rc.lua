local get_hex = require("cokeline/utils").get_hex

local space = { text = " " }
require("cokeline").setup(
  {
    mappings = {
      cycle_prev_next = true,
    },
    default_hl = {
      fg = function(buffer)
        return buffer.is_focused and nil or get_hex("Comment", "fg")
      end,
      bg = "none",
    },
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
  }
)

local keymap = vim.keymap

keymap.set('n', '<S-Tab>', '<Plug>(cokeline-focus-prev)')
keymap.set('n', '<Tab>', '<Plug>(cokeline-focus-next)')
keymap.set('n', '<A-Left>', '<Plug>(cokeline-switch-prev)')
keymap.set('n', '<A-Right>', '<Plug>(cokeline-switch-next)')
keymap.set('n', 'Q', ':bd<cr>')
