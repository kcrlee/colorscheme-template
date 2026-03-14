local util = require("mytheme.util")

local M = {}

-- @param colors ColorScheme
function M.generate(colors)
  local xfceterm = util.template(
    [[
[Scheme]
Name="${_name}"
ColorBackground=${bg}
ColorForeground=${fg}

ColorSelectionBackground=${bg_visual}
ColorSelection=${fg}

ColorPalette=${black};${red};${green};${yellow};${blue};${magenta};${cyan_light};${fg_dim};${fg_ghost};${red};${green};${yellow};${blue};${magenta};${cyan_light};${fg}
]],
    colors
  )
  return xfceterm
end

return M
