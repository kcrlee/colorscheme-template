local util = require("mytheme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end

M.template = [=[
[[themes]]
name = "${_style_name}"
[themes.palette]
background = "${bg_dark}"
foreground = "${fg_dim}"
black = "${fg_ghost}"
red = "${red}"
green = "${green}"
yellow = "${yellow}"
blue = "${blue}"
magenta = "${magenta}"
cyan_light = "${cyan_light}"
white = "${terminal.white}"
bright_black = "${bg}"
bright_red = "${red_dim}"
bright_green = "${green_bright}"
bright_yellow = "${orange}"
bright_blue = "${cyan_bright}"
bright_magenta = "${accent}"
bright_cyan = "${blue_bright}"
bright_white = "${fg}"
]=]

return M
