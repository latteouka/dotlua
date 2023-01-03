local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- args is a table, where 1 is the text in Placeholder 1, 2 the text in
-- placeholder 2,...
local function copy(args)
  return args[1]
end

return {
  -- console.log()
  s("cl", {
    t("console.log("),
    i(0),
    t(")"),
  }),
  -- import three
  s("th", {
    t("import * as THREE from 'three'"),
  }),
  -- react fc
  s("fc", {
    t("const "),
    i(1, "Name"),
    t({ " = () => {", "\t" }),
    t({ "return (", "\t" }),
    t("<div>"),
    i(0),
    t({ "</div>", "\t" }),
    t({ ")", "\t" }),
    t("}"),
    t({ "\t", "export default " }),
    f(copy, 1),
  }),
}
