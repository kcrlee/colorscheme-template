local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    GrugFarHelpHeader             = { fg = c.comment },
    GrugFarHelpHeaderKey          = { fg = c.cyan_light },
    GrugFarInputLabel             = { fg = c.cyan_bright },
    GrugFarInputPlaceholder       = { fg = c.fg_muted },
    GrugFarResultsChangeIndicator = { fg = c.git.change },
    GrugFarResultsHeader          = { fg = c.orange },
    GrugFarResultsLineColumn      = { fg = c.fg_muted },
    GrugFarResultsLineNo          = { fg = c.fg_muted },
    GrugFarResultsMatch           = { fg = c.black, bg = c.red },
    GrugFarResultsStats           = { fg = c.blue },
  }
end

return M
