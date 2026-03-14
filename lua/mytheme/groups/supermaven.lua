local M = {}

M.url = "https://github.com/supermaven-inc/supermaven-nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SupermavenSuggestion = { fg = c.fg_ghost },
  }
  return ret
end

return M
