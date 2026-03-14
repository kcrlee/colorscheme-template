local Util = require("mytheme.util")

local M = {}

---@type table<string, Palette|fun(opts:mytheme.Config):Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("mytheme.colors." .. style))
  end,
})

---@param opts? mytheme.Config
function M.setup(opts)
  opts = require("mytheme.config").extend(opts)

  Util.day_brightness = opts.day_brightness

  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts) --[[@as Palette]]
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.teal_dim, 0.25),
    delete = Util.blend_bg(colors.red_dim, 0.25),
    change = Util.blend_bg(colors.blue_muted, 0.15),
    text = colors.blue_muted,
  }

  colors.git.ignore = colors.fg_muted
  colors.black = Util.blend_bg(colors.bg, 0.8, "#000000")
  colors.border_highlight = Util.blend_bg(colors.cyan_bright, 0.8)
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = Util.blend_bg(colors.blue_dim, 0.4)
  colors.bg_search = colors.blue_dim
  colors.fg_sidebar = colors.fg_dim
  colors.fg_float = colors.fg

  colors.error = colors.red_dim
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.cyan
  colors.hint = colors.teal

  colors.rainbow = {
    colors.blue,
    colors.yellow,
    colors.green,
    colors.teal,
    colors.magenta,
    colors.purple,
    colors.orange,
    colors.red,
  }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.black,
    black_bright   = colors.fg_ghost,
    red            = colors.red,
    red_bright     = Util.brighten(colors.red),
    green          = colors.green,
    green_bright   = Util.brighten(colors.green),
    yellow         = colors.yellow,
    yellow_bright  = Util.brighten(colors.yellow),
    blue           = colors.blue,
    blue_bright    = Util.brighten(colors.blue),
    magenta        = colors.magenta,
    magenta_bright = Util.brighten(colors.magenta),
    cyan           = colors.cyan_light,
    cyan_bright    = Util.brighten(colors.cyan_light),
    white          = colors.fg_dim,
    white_bright   = colors.fg,
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
