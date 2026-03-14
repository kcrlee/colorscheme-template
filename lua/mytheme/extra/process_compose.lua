local util = require("mytheme.util")
local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local process_compose = util.template(
    [=[
style:
  name: ${_name}
  body:
    fgColor: '${fg}'
    bgColor: '${bg_dark}'
    secondaryTextColor: '${fg_dim}'
    tertiaryTextColor: '${fg_visual}'
    borderColor: '${fg_gutter}'
  stat_table:
    keyFgColor: '${yellow}'
    valueFgColor: '${fg}'
    logoColor: '${yellow}'
  proc_table:
    fgColor: '${blue}'
    fgWarning: '${yellow}'
    fgPending: '${fg_muted}'
    fgCompleted: '${green}'
    fgError: '${red_dim}'
    headerFgColor: '${fg}'
  help:
    fgColor: '${cyan_bright}'
    keyColor: '${fg}'
    hlColor: '${green}'
    categoryFgColor: '${blue_bright}'
  dialog:
    fgColor: '${cyan_bright}'
    bgColor: '${black}'
    contrastBgColor: '${bg}'
    attentionBgColor: '${red_dim}'
    buttonFgColor: '${black}'
    buttonBgColor: '${bg_highlight}'
    buttonFocusFgColor: '${black}'
    buttonFocusBgColor: '${blue}'
    labelFgColor: '${yellow}'
    fieldFgColor: '${black}'
    fieldBgColor: '${blue_muted}'
]=],
    colors
  )

  return process_compose
end

return M
