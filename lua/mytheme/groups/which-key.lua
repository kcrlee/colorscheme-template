local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.cyan_light },
    WhichKeyGroup     = { fg = c.blue },
    WhichKeyDesc      = { fg = c.magenta },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyNormal     = { bg = c.bg_sidebar },
    WhichKeyValue     = { fg = c.fg_secondary },
  }
end

return M
