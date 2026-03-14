local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.orange },
    AlphaHeader      = { fg = c.blue },
    AlphaHeaderLabel = { fg = c.orange },
    AlphaFooter      = { fg = c.cyan_bright },
    AlphaButtons     = { fg = c.cyan_light },
  }
end

return M
