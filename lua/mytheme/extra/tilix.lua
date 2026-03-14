local util = require("mytheme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tilix = util.template(
    [[
{
    "name": "${_style_name}",
    "comment": "",
    "use-theme-colors": false,
    "foreground-color": "${fg}",
    "background-color": "${bg}",
    "palette": [
        "${black}",
        "${red}",
        "${green}",
        "${yellow}",
        "${blue}",
        "${magenta}",
        "${cyan_light}",
        "${fg_dim}",
        "${fg_ghost}",
        "${red}",
        "${green}",
        "${yellow}",
        "${blue}",
        "${magenta}",
        "${cyan_light}",
        "${fg}"
    ]
}
  ]],
    colors
  )
  return tilix
end

return M
