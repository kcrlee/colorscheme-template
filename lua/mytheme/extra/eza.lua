local util = require("mytheme.util")

local M = {}

function M.generate(colors)
  local eza = util.template(
    [[
colourful: true

filekinds:
  normal: { foreground: "${fg}" }
  directory: { foreground: "${blue}" }
  symlink: { foreground: "${cyan_bright}" }
  pipe: { foreground: "${fg_ghost}" }
  block_device: { foreground: "${yellow}" }
  char_device: { foreground: "${yellow}" }
  socket: { foreground: "${fg_ghost}" }
  special: { foreground: "${purple}" }
  executable: { foreground: "${green}" }
  mount_point: { foreground: "${cyan_pale}" }

perms:
  user_read: { foreground: "${cyan_bright}" }
  user_write: { foreground: "${magenta}" }
  user_execute_file: { foreground: "${green}" }
  user_execute_other: { foreground: "${green}" }
  group_read: { foreground: "${cyan_bright}" }
  group_write: { foreground: "${orange}" }
  group_execute: { foreground: "${green}" }
  other_read: { foreground: "${cyan_bright}" }
  other_write: { foreground: "${accent}" }
  other_execute: { foreground: "${green}" }
  special_user_file: { foreground: "${accent}" }
  special_other: { foreground: "${red_dim}" }
  attribute: { foreground: "${fg_secondary}" }

size:
  major: { foreground: "${cyan_bright}" }
  minor: { foreground: "${purple}" }
  number_byte: { foreground: "${fg_dim}" }
  number_kilo: { foreground: "${blue_bright}" }
  number_mega: { foreground: "${cyan_bright}" }
  number_giga: { foreground: "${orange}" }
  number_huge: { foreground: "${accent}" }
  unit_byte: { foreground: "${fg_dim}" }
  unit_kilo: { foreground: "${blue_bright}" }
  unit_mega: { foreground: "${cyan_bright}" }
  unit_giga: { foreground: "${orange}" }
  unit_huge: { foreground: "${accent}" }

users:
  user_you: { foreground: "${blue_dim}" }
  user_root: { foreground: "${magenta}" }
  user_other: { foreground: "${cyan_bright}" }
  group_yours: { foreground: "${blue_bright}" }
  group_root: { foreground: "${magenta}" }
  group_other: { foreground: "${fg}" }

links:
  normal: { foreground: "${blue_bright}" }
  multi_link_file: { foreground: "${cyan_bright}" }

git:
  new: { foreground: "${green}" }
  modified: { foreground: "${magenta}" }
  deleted: { foreground: "${red_dim}" }
  renamed: { foreground: "${cyan_bright}" }
  typechange: { foreground: "${cyan_bright}" }
  ignored: { foreground: "${fg_muted}" }
  conflicted: { foreground: "${orange}" }

git_repo:
  branch_main: { foreground: "${fg_secondary}" }
  branch_other: { foreground: "${cyan_pale}" }
  git_clean: { foreground: "${bg_highlight}" }
  git_dirty: { foreground: "${magenta}" }

security_context:
  colon: { foreground: "${fg_muted}" }
  user: { foreground: "${fg_secondary}" }
  role: { foreground: "${cyan_bright}" }
  typ: { foreground: "${bg_search}" }
  range: { foreground: "${purple}" }

file_type:
  image: { foreground: "${blue_bright}" }
  video: { foreground: "${cyan_pale}" }
  music: { foreground: "${green_bright}" }
  lossless: { foreground: "${teal_dim}" }
  crypto: { foreground: "${red_dim}" }
  document: { foreground: "${fg_dim}" }
  compressed: { foreground: "${orange}" }
  temp: { foreground: "${fg_secondary}" }
  compiled: { foreground: "${fg_secondary}" }
  build: { foreground: "${teal}" }
  source: { foreground: "${magenta}" }

punctuation: { foreground: "${bg_highlight}" }
date: { foreground: "${yellow}" }
inode: { foreground: "${fg_secondary}" }
blocks: { foreground: "${fg_secondary}" }
header: { foreground: "${fg_dim}" }
octal: { foreground: "${orange}" }
flags: { foreground: "${purple}" }

symlink_path: { foreground: "${blue_bright}" }
control_char: { foreground: "${orange}" }
broken_symlink: { foreground: "${accent}" }
broken_path_overlay: { foreground: "${accent}" }]],
    colors
  )

  return eza
end

return M
