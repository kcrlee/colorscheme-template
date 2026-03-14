local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentBlanklineChar        = { fg = c.fg_gutter, nocombine = true },
    IndentBlanklineContextChar = { fg = c.cyan_bright, nocombine = true },
    IblIndent                  = { fg = c.fg_gutter, nocombine = true },
    IblScope                   = { fg = c.cyan_bright, nocombine = true },
  }
end

return M
