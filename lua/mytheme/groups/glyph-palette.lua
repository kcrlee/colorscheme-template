local M = {}

M.url = "https://github.com/lambdalisue/glyph-palette.vim"

---@type mytheme.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.red_dim },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.green_bright },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.red },
  }
end

return M
