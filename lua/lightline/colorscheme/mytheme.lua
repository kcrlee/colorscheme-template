local colors = require("mytheme.colors").setup()

local mytheme = {}

mytheme.normal = {
  left = { { colors.black, colors.blue }, { colors.blue, colors.fg_gutter } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.blue }, { colors.blue, colors.fg_gutter } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

mytheme.insert = {
  left = { { colors.black, colors.green }, { colors.blue, colors.bg } },
}

mytheme.visual = {
  left = { { colors.black, colors.magenta }, { colors.blue, colors.bg } },
}

mytheme.replace = {
  left = { { colors.black, colors.red }, { colors.blue, colors.bg } },
}

mytheme.inactive = {
  left = { { colors.blue, colors.bg_statusline }, { colors.fg_muted, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.fg_muted, colors.bg } },
}

mytheme.tabline = {
  left = { { colors.fg_muted, colors.bg_highlight }, { colors.fg_muted, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.fg_muted, colors.bg } },
  tabsel = { { colors.blue, colors.fg_gutter }, { colors.fg_muted, colors.bg } },
}

return mytheme
