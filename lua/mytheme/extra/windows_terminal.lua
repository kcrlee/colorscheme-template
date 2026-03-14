local util = require("mytheme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local windows_terminal = util.template(
    [[
# Add the following object to your Windows Terminal configuration
# https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme
{
    "background": "${bg}",
    "black": "${black}",
    "blue": "${blue}",
    "brightBlack": "${fg_ghost}",
    "brightBlue": "${blue}",
    "brightCyan": "${cyan_light}",
    "brightGreen": "${green}",
    "brightPurple": "${purple}",
    "brightRed": "${red}",
    "brightWhite": "${fg}",
    "brightYellow": "${yellow}",
    "cursorColor": "${fg}",
    "cyan_light": "${cyan_light}",
    "foreground": "${fg}",
    "green": "${green}",
    "name": "${_style_name}",
    "purple": "${magenta}",
    "red": "${red}",
    "selectionBackground": "${bg_visual}",
    "white": "${fg_dim}",
    "yellow": "${yellow}"
}
]],
    colors
  )

  return windows_terminal
end

return M
