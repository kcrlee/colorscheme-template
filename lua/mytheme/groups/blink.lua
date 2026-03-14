local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    BlinkCmpDoc                 = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.fg_ghost },
    BlinkCmpKindCodeium         = { fg = c.teal, bg             = c.none },
    BlinkCmpKindCopilot         = { fg = c.teal, bg             = c.none },
    BlinkCmpKindDefault         = { fg = c.fg_dim, bg          = c.none },
    BlinkCmpKindSupermaven      = { fg = c.teal, bg             = c.none },
    BlinkCmpKindTabNine         = { fg = c.teal, bg             = c.none },
    BlinkCmpLabel               = { fg = c.fg, bg               = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.fg_gutter, bg        = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.cyan_bright, bg            = c.none },
    BlinkCmpMenu                = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.border_highlight, bg = c.bg_float },
  }

  require("mytheme.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
