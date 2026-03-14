local util = require("mytheme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local gitui = util.template(
    [[
(
  selected_tab: Some("${magenta}"),
  command_fg: Some("${comment}"),
  selection_bg: Some("${bg_highlight}"),
  selection_fg: Some("${cyan_light}"),
  cmdbar_bg: Some("${bg}"),
  cmdbar_extra_lines_bg: Some("${bg}"),
  disabled_fg: Some("${comment}"),
  diff_line_add: Some("${green}"),
  diff_line_delete: Some("${red}"),
  diff_file_added: Some("${green_bright}"),
  diff_file_removed: Some("${red_dim}"),
  diff_file_moved: Some("${accent}"),
  diff_file_modified: Some("${yellow}"),
  commit_hash: Some("${magenta}"),
  commit_time: Some("${teal}"),
  commit_author: Some("${green}"),
  danger_fg: Some("${red}"),
  push_gauge_bg: Some("${bg}"),
  push_gauge_fg: Some("${fg}"),
  tag_fg: Some("${accent}"),
  branch_fg: Some("${yellow}")
)
]],
    colors
  )

  return gitui
end

return M
