local Util = require("mytheme.util")

local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey = { fg = c.accent, bold = true },
    HopNextKey1 = { fg = c.cyan, bold = true },
    HopNextKey2 = { fg = Util.blend_bg(c.cyan, 0.6) },
    HopUnmatched = { fg = c.fg_muted },
  }
end

return M
