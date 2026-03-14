local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.fg_gutter, nocombine = true },
    IndentLineCurrent          = { fg = c.cyan_bright, nocombine = true },
  }
end

return M
