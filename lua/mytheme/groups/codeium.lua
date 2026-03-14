local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CodeiumSuggestion = { fg = c.fg_ghost },
  }
  return ret
end

return M
