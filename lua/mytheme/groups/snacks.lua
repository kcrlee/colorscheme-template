local Util = require("mytheme.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.comment, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug   = { fg = c.comment },
    SnacksNotifierTitleDebug  = { fg = c.comment },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = Util.blend_bg(c.error, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError   = { fg = c.error },
    SnacksNotifierTitleError  = { fg = c.error },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = Util.blend_bg(c.info, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo    = { fg = c.info },
    SnacksNotifierTitleInfo   = { fg = c.info },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.purple, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace   = { fg = c.purple },
    SnacksNotifierTitleTrace  = { fg = c.purple },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = Util.blend_bg(c.warning, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn    = { fg = c.warning },
    SnacksNotifierTitleWarn   = { fg = c.warning },
    -- Dashboard
    SnacksDashboardDesc       = { fg = c.cyan_light },
    SnacksDashboardFooter     = { fg = c.cyan_bright },
    SnacksDashboardHeader     = { fg = c.blue },
    SnacksDashboardIcon       = { fg = c.cyan_bright },
    SnacksDashboardKey        = { fg = c.orange },
    SnacksDashboardSpecial    = { fg = c.purple },
    SnacksDashboardDir        = { fg = c.fg_muted },
    -- Profiler
    SnacksProfilerIconInfo    = { bg = Util.blend_bg(c.cyan_bright, 0.3), fg = c.cyan_bright },
    SnacksProfilerBadgeInfo   = { bg = Util.blend_bg(c.cyan_bright, 0.1), fg = c.cyan_bright },
    SnacksFooterKey           = "SnacksProfilerIconInfo",
    SnacksFooterDesc          = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace   = { bg = Util.blend_bg(c.blue_muted, 0.3), fg = c.fg_muted },
    SnacksProfilerBadgeTrace  = { bg = Util.blend_bg(c.blue_muted, 0.1), fg = c.fg_muted },
    SnacksIndent              = { fg = c.fg_gutter, nocombine = true },
    SnacksIndentScope         = { fg = c.cyan_bright, nocombine = true },
    SnacksZenIcon             = { fg = c.purple },
    SnacksInputIcon           = { fg = c.cyan_bright },
    SnacksInputBorder         = { fg = c.yellow },
    SnacksInputTitle          = { fg = c.yellow },
    -- Picker
    SnacksPickerInputBorder   = { fg = c.orange, bg = c.bg_float },
    SnacksPickerInputTitle    = { fg = c.orange, bg = c.bg_float },
    SnacksPickerBoxTitle      = { fg = c.orange, bg = c.bg_float },
    SnacksPickerSelected      = { fg = c.accent},
    SnacksPickerToggle        = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent= { fg = c.fg, bg = c.accent, bold = true },
    SnacksPickerPickWin       = { fg = c.fg, bg = c.bg_search, bold = true },
    SnacksGhLabel             = { fg = c.cyan_bright, bold = true },
    SnacksGhDiffHeader        = { bg = Util.blend_bg(c.cyan_bright, 0.1), fg = c.cyan_bright }
  }
  for i, color in ipairs(c.rainbow) do
    ret["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  return ret
end

return M
