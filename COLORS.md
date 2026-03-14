# Color Palette Reference

This document explains every color in your palette (`lua/mytheme/colors/dark.lua`) and where it's used across the colorscheme.

## How it works

The colorscheme has a **two-layer** color system:

1. **Palette** (`lua/mytheme/colors/dark.lua`) — You define ~30 named hex values here. This is the only file you need to edit.
2. **Highlight groups** (`lua/mytheme/groups/*.lua`) — These map palette colors to Neovim highlight groups. You don't need to touch these unless you want to change *which* color a specific UI element uses.

Colors flow like this:

```
dark.lua (your hex values)
  → colors/init.lua (derives composite colors: diff, border, terminal, etc.)
    → groups/*.lua (maps colors to highlight groups like Normal, Comment, etc.)
      → nvim_set_hl() (applies to Neovim)
```

## Background Colors

### `bg`
Main editor background. The most visible background color.
- `Normal` (editor background)
- `EndOfBuffer` (filler lines after buffer end)
- `SignColumn`, `FoldColumn` (when not transparent)
- `TabLineFill` (tab bar background, blended darker)

### `bg_dark`
Darker background for secondary UI containers.
- Popup menus (`Pmenu`)
- Floating windows (`NormalFloat`)
- Sidebar (`NormalSB`) when `sidebars = "dark"`
- Status line (`StatusLine`)
- Code blocks in markdown rendering

### `bg_darker`
Darkest background. Currently reserved — defined for themes that want an extra depth level (e.g., a darker sidebar within an already-dark float).

### `bg_highlight`
Subtle highlight background for focused elements.
- `CursorLine`, `CursorColumn` (cursor line highlighting)
- Scrollbar handles
- Active tab backgrounds (neo-tree, barbar)
- Statusline filename section (mini.statusline)

## Foreground Colors

### `fg`
Primary text color. Used everywhere text appears.
- `Normal` (main editor text)
- Popup menu text
- Bold text base
- Terminal white_bright

### `fg_dim`
Secondary text — slightly muted from `fg`.
- `ModeMsg`, `MsgArea` (command line messages)
- `@punctuation.bracket` (brackets in code)
- Sidebar text (`NormalSB`)
- Default completion item kinds
- Terminal white

### `fg_gutter`
Structural UI color — the most heavily used color in the palette.
- `LineNr` (line numbers)
- `SignColumn` (sign column)
- `Whitespace` (visible whitespace chars)
- Indent guides (indent-blankline, mini.indentscope)
- `Folded` (fold background)
- `PmenuSel` (popup selection, blended)
- `StatusLineNC`, `TabLine` (inactive status/tab lines)
- LSP reference highlighting background
- Lualine section B background

### `fg_muted`
Low-contrast text for de-emphasized content.
- `NonText`, `SpecialKey` (invisible characters)
- Git ignored files
- Backdrop/fade effects (flash.nvim, leap.nvim, hop.nvim)
- Inactive tab text (neo-tree, lightline)
- Search result metadata (grug-far line numbers)

### `fg_secondary`
Medium-contrast text for secondary UI.
- `Conceal` (concealed text placeholders)
- Quickfix line numbers
- Which-key command values
- Inactive buffer text (barbar, mini.tabline)

### `fg_ghost`
Very subtle text for hints and suggestions.
- AI code suggestions (Copilot, Codeium, Supermaven)
- Ghost text in completions (nvim-cmp, blink.cmp)
- `DiagnosticUnnecessary` (grayed-out unused code)
- Inline markdown code
- Completion hints
- Terminal black_bright

### `comment`
Code comment color. Also used for:
- `FoldColumn` foreground
- LSP code lens
- Diff line headers
- Help example text

## Core Syntax Colors

### `blue`
Primary blue. The most prominent accent color.
- `Function` (function names)
- `Directory` (directory names in file explorers)
- `Title` (section titles)
- `Folded` text, `MoreMsg`, `Question`
- `Search` background (via derived `bg_search`)
- `TabLineSel` background (active tab)
- Lualine normal mode accent

### `green`
Strings and success.
- `String` (string literals)
- `Character` (character constants)
- Barbecue context_string

### `red`
Primary red for attention.
- Changed variables in TreeSitter
- Git deleted indicators
- Lualine replace mode accent
- `Substitute` background

### `orange`
Constants and warm accents.
- `Constant` (constants, numbers)
- `CursorLineNr` (current line number)
- `MatchParen` (matching bracket)
- `IncSearch` (incremental search)
- `Debug` statements
- Barbecue class/enum/struct context

### `yellow`
Warnings and highlights.
- `Todo` background
- Warning diagnostics
- Lualine command mode accent
- Barbecue module/namespace context

### `magenta`
Statements and identifiers.
- `Statement` (language statements)
- `Identifier` (variable names)
- `@variable.builtin` (self, this)
- Lualine visual mode accent

### `purple`
Special identifiers and keys.
- Context keys (barbecue)
- `@markup.heading` levels

### `teal`
Hints and tags.
- Hint diagnostics
- `@tag` (HTML/JSX tags)
- `@markup.list.checked` items

## Extended Palette

### `blue_dim`
Deep, muted blue for subtle backgrounds.
- `Search` highlight background (derived as `bg_search`)
- `Visual` mode selection (derived as `bg_visual`, blended at 40%)

### `blue_bright`
Vivid blue for operators and structure.
- `Operator` (arithmetic/logic operators: `+`, `-`, `*`, etc.)
- `@punctuation.delimiter` (semicolons, commas)
- `@punctuation.special` (interpolation brackets)
- `@markup.list` (list markers)

### `blue_muted`
Dark, subdued blue for diff contexts.
- Diff change background (blended at 15%)
- Diff changed text
- LSP inlay hint background (blended at 10%)

### `cyan`
Info-level diagnostics and navigation.
- `DiagnosticInfo` and related virtual text/underlines
- Derived as `colors.info`

### `cyan_bright`
Bright cyan for interactive UI elements.
- `Type` annotations
- `Special` symbols
- Completion match highlighting (nvim-cmp, blink.cmp)
- Popup menu match text (`PmenuMatch`)
- Indent scope indicators
- Float/window border highlights (derived as `border_highlight`)
- Diff file headers

### `cyan_light`
General-purpose cyan.
- `Keyword` (language keywords: `if`, `for`, `return`)
- `PreProc` (preprocessor directives)
- Terminal cyan color

### `cyan_pale`
Very light cyan, used sparingly.
- `@string.regexp` (regular expression patterns)

### `green_bright`
Bright teal for success and properties.
- `@property`, `@variable.member` (object properties, struct fields)
- `@markup.list.checked` (completed checklist items)
- Health check success messages
- Git staged files (neo-tree)
- Lualine terminal mode accent

### `teal_dim`
Muted teal for additions.
- Diff add background (blended at 25%)
- Neotest namespace highlighting

### `red_dim`
Medium red for errors and deletions.
- Error diagnostics (`DiagnosticError`)
- Diff delete background (blended at 25%)
- Derived as `colors.error`

### `accent`
The "look here NOW" color — highest visual priority.
- Navigation labels: flash.nvim, hop.nvim, leap.nvim, mini.jump
- Active picker selection (snacks, fzf-lua)
- Plugin progress indicators (lazy.nvim)
- Fzf pointer

## Git Colors

### `git.add`
Git added/staged file indicator in gutters and file explorers.

### `git.change`
Git modified file indicator.

### `git.delete`
Git deleted/removed file indicator.

## Derived Colors (auto-generated)

These colors are computed in `colors/init.lua` from your palette — you don't define them directly:

| Derived | Source | Used for |
|---------|--------|----------|
| `black` | `bg` blended toward #000000 | Very dark accents, tab fill |
| `border` | = `black` | Window separator borders |
| `border_highlight` | `cyan_bright` at 80% | Highlighted borders, float titles |
| `bg_popup` | = `bg_dark` | Popup menu background |
| `bg_statusline` | = `bg_dark` | Status line background |
| `bg_sidebar` | `bg_dark` or `bg` or `none` | Sidebar background (configurable) |
| `bg_float` | `bg_dark` or `bg` or `none` | Float background (configurable) |
| `bg_visual` | `blue_dim` at 40% | Visual selection |
| `bg_search` | = `blue_dim` | Search highlight |
| `fg_sidebar` | = `fg_dim` | Sidebar text |
| `fg_float` | = `fg` | Float text |
| `error` | = `red_dim` | Error diagnostics |
| `warning` | = `yellow` | Warning diagnostics |
| `info` | = `cyan` | Info diagnostics |
| `hint` | = `teal` | Hint diagnostics |
| `todo` | = `blue` | TODO highlights |
| `diff.add` | `teal_dim` at 25% | Added lines background |
| `diff.delete` | `red_dim` at 25% | Deleted lines background |
| `diff.change` | `blue_muted` at 15% | Changed lines background |
| `diff.text` | = `blue_muted` | Changed text within changed lines |
| `terminal.*` | Various palette colors | 16-color terminal palette |
| `rainbow` | Array of 8 colors | Rainbow bracket/indent colors |
