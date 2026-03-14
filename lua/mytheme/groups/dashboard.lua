local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type mytheme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.blue },
    DashboardFooter           = { fg = c.cyan_bright },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.cyan_light },
    DashboardProjectTitleIcon = { fg = c.orange },
    DashboardProjectIcon      = { fg = c.yellow },
    DashboardMruTitle         = { fg = c.cyan_light },
    DashboardMruIcon          = { fg = c.purple },
    DashboardFiles            = { fg = c.blue },
    DashboardShortCutIcon     = { fg = c.magenta },
    -- Doome theme
    DashboardDesc             = { fg = c.cyan_light },
    DashboardKey              = { fg = c.orange },
    DashboardIcon             = { fg = c.cyan_light },
    DashboardShortCut         = { fg = c.cyan_light },
  }
end

return M
