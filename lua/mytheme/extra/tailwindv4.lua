local util = require("mytheme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-mytheme-${_style}-bg: oklch(from ${bg} l c h);
  --color-mytheme-${_style}-bg-dark: oklch(from ${bg_dark} l c h);
  --color-mytheme-${_style}-bg-dark1: oklch(from ${bg_darker} l c h);
  --color-mytheme-${_style}-bg-float: var(--color-mytheme-${_style}-bg-dark);
  --color-mytheme-${_style}-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-mytheme-${_style}-bg-popup: var(--color-mytheme-${_style}-bg-dark);
  --color-mytheme-${_style}-bg-search: var(--color-mytheme-${_style}-blue_dim);
  --color-mytheme-${_style}-bg-sidebar: var(--color-mytheme-${_style}-bg-dark);
  --color-mytheme-${_style}-bg-statusline: var(--color-mytheme-${_style}-bg-dark);
  --color-mytheme-${_style}-bg-visual: oklch(from ${bg_visual} l c h);
  --color-mytheme-${_style}-black: oklch(from ${black} l c h);
  --color-mytheme-${_style}-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-mytheme-${_style}-blue: oklch(from ${blue} l c h);
  --color-mytheme-${_style}-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-mytheme-${_style}-blue_dim: oklch(from ${blue_dim} l c h);
  --color-mytheme-${_style}-cyan_bright: oklch(from ${cyan_bright} l c h);
  --color-mytheme-${_style}-cyan: oklch(from ${cyan} l c h);
  --color-mytheme-${_style}-blue_bright: oklch(from ${blue_bright} l c h);
  --color-mytheme-${_style}-cyan_pale: oklch(from ${cyan_pale} l c h);
  --color-mytheme-${_style}-blue_muted: oklch(from ${blue_muted} l c h);
  --color-mytheme-${_style}-border: var(--color-mytheme-${_style}-black);
  --color-mytheme-${_style}-border-highlight: oklch(from ${border_highlight} l c h);
  --color-mytheme-${_style}-comment: oklch(from ${comment} l c h);
  --color-mytheme-${_style}-cyan_light: oklch(from ${cyan_light} l c h);
  --color-mytheme-${_style}-cyan_light-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-mytheme-${_style}-fg_muted: oklch(from ${fg_muted} l c h);
  --color-mytheme-${_style}-fg_secondary: oklch(from ${fg_secondary} l c h);
  --color-mytheme-${_style}-diff-add: oklch(from ${diff.add} l c h);
  --color-mytheme-${_style}-diff-change: oklch(from ${diff.change} l c h);
  --color-mytheme-${_style}-diff-delete: oklch(from ${diff.delete} l c h);
  --color-mytheme-${_style}-diff-text: var(--color-mytheme-${_style}-blue_muted);
  --color-mytheme-${_style}-error: var(--color-mytheme-${_style}-red_dim);
  --color-mytheme-${_style}-fg: oklch(from ${fg} l c h);
  --color-mytheme-${_style}-fg-dark: oklch(from ${fg_dim} l c h);
  --color-mytheme-${_style}-fg-float: var(--color-mytheme-${_style}-fg);
  --color-mytheme-${_style}-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-mytheme-${_style}-fg-sidebar: var(--color-mytheme-${_style}-fg-dark);
  --color-mytheme-${_style}-git-add: oklch(from ${git.add} l c h);
  --color-mytheme-${_style}-git-change: oklch(from ${git.change} l c h);
  --color-mytheme-${_style}-git-delete: oklch(from ${git.delete} l c h);
  --color-mytheme-${_style}-git-ignore: var(--color-mytheme-${_style}-fg_muted);
  --color-mytheme-${_style}-green: oklch(from ${green} l c h);
  --color-mytheme-${_style}-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-mytheme-${_style}-green_bright: oklch(from ${green_bright} l c h);
  --color-mytheme-${_style}-teal_dim: oklch(from ${teal_dim} l c h);
  --color-mytheme-${_style}-hint: var(--color-mytheme-${_style}-teal);
  --color-mytheme-${_style}-info: var(--color-mytheme-${_style}-cyan);
  --color-mytheme-${_style}-magenta: oklch(from ${magenta} l c h);
  --color-mytheme-${_style}-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-mytheme-${_style}-accent: oklch(from ${accent} l c h);
  --color-mytheme-${_style}-orange: oklch(from ${orange} l c h);
  --color-mytheme-${_style}-purple: oklch(from ${purple} l c h);
  --color-mytheme-${_style}-rainbow1: var(--color-mytheme-${_style}-blue);
  --color-mytheme-${_style}-rainbow2: var(--color-mytheme-${_style}-yellow);
  --color-mytheme-${_style}-rainbow3: var(--color-mytheme-${_style}-green);
  --color-mytheme-${_style}-rainbow4: var(--color-mytheme-${_style}-teal);
  --color-mytheme-${_style}-rainbow5: var(--color-mytheme-${_style}-magenta);
  --color-mytheme-${_style}-rainbow6: var(--color-mytheme-${_style}-purple);
  --color-mytheme-${_style}-rainbow7: var(--color-mytheme-${_style}-orange);
  --color-mytheme-${_style}-rainbow8: var(--color-mytheme-${_style}-red);
  --color-mytheme-${_style}-red: oklch(from ${red} l c h);
  --color-mytheme-${_style}-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-mytheme-${_style}-red_dim: oklch(from ${red_dim} l c h);
  --color-mytheme-${_style}-teal: oklch(from ${teal} l c h);
  --color-mytheme-${_style}-todo: var(--color-mytheme-${_style}-blue);
  --color-mytheme-${_style}-warning: var(--color-mytheme-${_style}-yellow);
  --color-mytheme-${_style}-yellow: oklch(from ${yellow} l c h);
  --color-mytheme-${_style}-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
