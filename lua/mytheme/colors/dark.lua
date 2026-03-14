--- PALETTE: Define your colorscheme's dark mode colors here.
---
--- All values below are required. The highlight group mappings in groups/
--- reference these by name, so you only need to change hex values here.
--- See COLORS.md for a detailed explanation of what each color is used for.

---@class Palette
local ret = {
  -- Backgrounds
  bg           = "#000000",  -- main editor background
  bg_dark      = "#000000",  -- popups, floats, sidebar, statusline background
  bg_darker    = "#000000",  -- darkest background (reserved)
  bg_highlight = "#000000",  -- cursorline, cursor column, visual selection base

  -- Foregrounds
  fg           = "#000000",  -- primary text color
  fg_dim       = "#000000",  -- secondary text: messages, brackets, sidebar text
  fg_gutter    = "#000000",  -- line numbers, indent guides, sign column
  fg_muted     = "#000000",  -- backdrops, non-text chars, ignored files
  fg_secondary = "#000000",  -- conceal text, quickfix line numbers, inactive UI
  fg_ghost     = "#000000",  -- ghost text, AI suggestions, inline code
  comment      = "#000000",  -- code comments

  -- Core syntax colors
  blue         = "#000000",  -- functions, directories, titles, fold text
  green        = "#000000",  -- strings, characters
  red          = "#000000",  -- primary red: errors in syntax, changed vars
  orange       = "#000000",  -- constants, numbers, cursor line number
  yellow       = "#000000",  -- warnings, command mode, todo background
  magenta      = "#000000",  -- statements, identifiers, visual mode
  purple       = "#000000",  -- context keys, special identifiers
  teal         = "#000000",  -- hints, tags

  -- Extended palette
  blue_dim     = "#000000",  -- search/visual selection background
  blue_bright  = "#000000",  -- operators, punctuation, delimiters
  blue_muted   = "#000000",  -- diff change background, inlay hint background
  cyan         = "#000000",  -- info diagnostics, navigation markers
  cyan_bright  = "#000000",  -- type annotations, completion matches, special UI
  cyan_light   = "#000000",  -- general-purpose cyan
  cyan_pale    = "#000000",  -- regex pattern highlighting
  green_bright = "#000000",  -- success states, properties, git staged
  teal_dim     = "#000000",  -- diff additions, namespaces
  red_dim      = "#000000",  -- error diagnostics, diff deletions
  accent       = "#000000",  -- navigation labels (flash, hop, leap), active selection

  git = {
    add    = "#000000",  -- git added indicator
    change = "#000000",  -- git changed indicator
    delete = "#000000",  -- git deleted indicator
  },
}
return ret
