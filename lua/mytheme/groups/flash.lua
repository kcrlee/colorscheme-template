local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.fg_muted },
    FlashLabel    = { bg = c.accent, bold = true, fg = c.fg },
  }
end

return M
