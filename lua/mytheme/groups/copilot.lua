local M = {}

M.url = "https://github.com/zbirenbaum/copilot.lua"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CopilotAnnotation = { fg = c.fg_ghost },
    CopilotSuggestion = { fg = c.fg_ghost },
  }
  return ret
end

return M
