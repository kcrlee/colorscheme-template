local util = require("mytheme.util")

local M = {}

--- @param colors ColorScheme
--- @return table<string, string>
local function generate_defs(colors)
  local defs = {}

  local keys = vim.tbl_keys(colors)
  table.sort(keys)
  for _, key in ipairs(keys) do
    local value = colors[key]
    -- Skip keys that start with underscore (metadata) and "none"
    if not key:match("^_") and key ~= "none" then
      if type(value) == "string" then
        defs[key] = value
      elseif type(value) == "table" then
        -- Handle nested tables like git, diff, terminal
        for subkey, subvalue in pairs(value) do
          if type(subvalue) == "string" then
            defs[key .. "_" .. subkey] = subvalue
          end
        end
      end
    end
  end

  return defs
end

--- @param defs table<string, string>
--- @param indent number Number of spaces to indent
--- @return string
local function format_defs_json(defs, indent)
  local defs_lines = {}

  -- Sort keys for consistent output
  local sorted_keys = {}
  for k in pairs(defs) do
    table.insert(sorted_keys, k)
  end
  table.sort(sorted_keys)

  for _, k in ipairs(sorted_keys) do
    table.insert(defs_lines, string.format('%s"%s": "%s"', string.rep(" ", indent), k, defs[k]))
  end

  return table.concat(defs_lines, ",\n")
end

--- @param colors ColorScheme
function M.generate(colors)
  colors = vim.deepcopy(colors)

  local defs = generate_defs(colors)
  colors.opencode_defs = format_defs_json(defs, 4)

  local opencode = util.template(
    [[{
  "$schema": "https://opencode.ai/theme.json",
  "defs": {
${opencode_defs}
  },
  "theme": {
    "primary": {
      "dark": "blue",
      "light": "blue"
    },
    "secondary": {
      "dark": "purple",
      "light": "purple"
    },
    "accent": {
      "dark": "orange",
      "light": "orange"
    },
    "error": {
      "dark": "red_dim",
      "light": "red_dim"
    },
    "warning": {
      "dark": "yellow",
      "light": "yellow"
    },
    "success": {
      "dark": "green",
      "light": "green"
    },
    "info": {
      "dark": "cyan",
      "light": "cyan"
    },
    "text": {
      "dark": "fg",
      "light": "fg"
    },
    "textMuted": {
      "dark": "fg_dim",
      "light": "fg_dim"
    },
    "background": {
      "dark": "bg",
      "light": "bg"
    },
    "backgroundPanel": {
      "dark": "bg_dark",
      "light": "bg_dark"
    },
    "backgroundElement": {
      "dark": "bg_highlight",
      "light": "bg_highlight"
    },
    "border": {
      "dark": "black",
      "light": "black"
    },
    "borderActive": {
      "dark": "border_highlight",
      "light": "border_highlight"
    },
    "borderSubtle": {
      "dark": "fg_muted",
      "light": "fg_muted"
    },
    "diffAdded": {
      "dark": "green_bright",
      "light": "green_bright"
    },
    "diffRemoved": {
      "dark": "red_dim",
      "light": "red_dim"
    },
    "diffContext": {
      "dark": "fg_dim",
      "light": "fg_dim"
    },
    "diffHunkHeader": {
      "dark": "comment",
      "light": "comment"
    },
    "diffHighlightAdded": {
      "dark": "git_add",
      "light": "git_add"
    },
    "diffHighlightRemoved": {
      "dark": "git_delete",
      "light": "git_delete"
    },
    "diffAddedBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "diffContextBg": {
      "dark": "bg_highlight",
      "light": "bg_highlight"
    },
    "diffLineNumber": {
      "dark": "fg_gutter",
      "light": "fg_gutter"
    },
    "diffAddedLineNumberBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedLineNumberBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "markdownText": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownHeading": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownLink": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownLinkText": {
      "dark": "teal",
      "light": "teal"
    },
    "markdownCode": {
      "dark": "green",
      "light": "green"
    },
    "markdownBlockQuote": {
      "dark": "comment",
      "light": "comment"
    },
    "markdownEmph": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownStrong": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownHorizontalRule": {
      "dark": "fg_gutter",
      "light": "fg_gutter"
    },
    "markdownListItem": {
      "dark": "blue_bright",
      "light": "blue_bright"
    },
    "markdownListEnumeration": {
      "dark": "orange",
      "light": "orange"
    },
    "markdownImage": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownImageText": {
      "dark": "teal",
      "light": "teal"
    },
    "markdownCodeBlock": {
      "dark": "fg",
      "light": "fg"
    },
    "syntaxComment": {
      "dark": "comment",
      "light": "comment"
    },
    "syntaxKeyword": {
      "dark": "purple",
      "light": "purple"
    },
    "syntaxFunction": {
      "dark": "blue",
      "light": "blue"
    },
    "syntaxVariable": {
      "dark": "fg",
      "light": "fg"
    },
    "syntaxString": {
      "dark": "green",
      "light": "green"
    },
    "syntaxNumber": {
      "dark": "orange",
      "light": "orange"
    },
    "syntaxType": {
      "dark": "cyan_bright",
      "light": "cyan_bright"
    },
    "syntaxOperator": {
      "dark": "blue_bright",
      "light": "blue_bright"
    },
    "syntaxPunctuation": {
      "dark": "fg_dim",
      "light": "fg_dim"
    }
  }
}]],
    colors
  )

  return opencode
end

return M
