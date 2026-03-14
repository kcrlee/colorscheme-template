local util = require("mytheme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local footColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      footColors[k] = v:gsub("^#", "")
    end
  end

  local foot = util.template(
    [[
[cursor]
color=${fg} ${bg_visual}

[colors]
foreground=${fg}
background=${bg}
selection-foreground=${fg}
selection-background=${bg_visual}
urls=${green_bright}

regular0=${black}
regular1=${red}
regular2=${green}
regular3=${yellow}
regular4=${blue}
regular5=${magenta}
regular6=${cyan_light}
regular7=${fg_dim}

bright0=${fg_ghost}
bright1=${red}
bright2=${green}
bright3=${yellow}
bright4=${blue}
bright5=${magenta}
bright6=${cyan_light}
bright7=${fg}

16=${orange}
17=${red_dim}]],
    footColors
  )

  return foot
end

return M
