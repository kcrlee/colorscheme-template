local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LeapMatch          = { bg = c.accent, fg = c.fg, bold = true },
    LeapLabel          = { fg = c.accent, bold = true },
    LeapBackdrop       = { fg = c.fg_muted },
  }
end

return M
