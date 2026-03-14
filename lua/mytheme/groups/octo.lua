local Util = require("mytheme.util")

local M = {}

M.url = "https://github.com/pwntester/octo.nvim"

---@type mytheme.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.cyan_bright, bold = true },
    OctoDetailsValue          = "@variable.member",
    OctoDirty                 = { fg = c.orange, bold = true },
    OctoIssueTitle            = { fg = c.purple, bold = true },
    OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
    OctoStateClosed           = "DiagnosticVirtualTextError",
    OctoStateMerged           = { bg = Util.blend_bg(c.magenta, 0.1), fg = c.magenta },
    OctoStateOpen             = "DiagnosticVirtualTextHint",
    OctoStatePending          = "DiagnosticVirtualTextWarn",
    OctoStatusColumn          = { fg = c.cyan_bright },

  }
end

return M
