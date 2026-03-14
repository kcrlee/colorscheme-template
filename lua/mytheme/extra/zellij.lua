local util = require("mytheme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local zellij = util.template(
    [=[
// ${_style_name} Zellij Colors
// Add this file to your `CONFIG_DIR/themes` directory as described here:
// https://zellij.dev/documentation/themes#getting-zellij-to-pick-up-the-theme

themes {
    ${_name} {
        fg "${fg}"
        bg "${bg_highlight}"
        // Black should match the terminal background color
        // This ensures the top and bottom bars are transparent
        black "${bg}"
        red "${red}"
        green "${green}"
        yellow "${yellow}"
        blue "${blue}"
        magenta "${magenta}"
        cyan_light "${cyan_light}"
        white "${fg_dim}"
        orange "${orange}"
    }
}

]=],
    colors
  )

  return zellij
end

return M
