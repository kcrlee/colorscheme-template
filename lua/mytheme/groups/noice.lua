local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type mytheme.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    NoiceCmdlineIconInput          = { fg = c.yellow },
    NoiceCmdlineIconLua            = { fg = c.cyan_bright },
    NoiceCmdlinePopupBorderInput   = { fg = c.yellow },
    NoiceCmdlinePopupBorderLua     = { fg = c.cyan_bright },
    NoiceCmdlinePopupTitleInput    = { fg = c.yellow },
    NoiceCmdlinePopupTitleLua      = { fg = c.cyan_bright },
    NoiceCompletionItemKindDefault = { fg = c.fg_dim, bg = c.none },
  }
  require("mytheme.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
