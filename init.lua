require('chun.base')
require('chun.highlights')
require('chun.maps')
require('chun.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('chun.macos')
end
if is_win then
  require('chun.windows')
end
