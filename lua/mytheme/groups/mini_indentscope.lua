local M = {}

M.url = "https://github.com/echasnovski/mini.indentscope"

---@type mytheme.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIndentscopeSymbol = { fg = c.cyan_bright, nocombine = true },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible
  }
end

return M
