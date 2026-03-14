local util = require("mytheme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local terminator = util.template(
    [=[
[[${_style_name}]]
  palette = "${black}:${red}:${green}:${yellow}:${blue}:${magenta}:${cyan_light}:${fg_dim}:${fg_ghost}:${red}:${green}:${yellow}:${blue}:${magenta}:${cyan_light}:${purple}"
  background_color = "${bg}"
  foreground_color = "${fg}"
  ]=],
    colors
  )
  return terminator
end

return M
