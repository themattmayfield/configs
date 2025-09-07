-- -- In ~/.config/nvim/lua/plugins/colorscheme.lua
-- return {
--   {
--     "mcchrish/zenbones.nvim",
--     dependencies = "rktjmp/lush.nvim",
--     config = function()
--       vim.g.zenbones_darken_comments = 60
--       vim.cmd("colorscheme zenbones")
--     end,
--   },
--
--   -- Configure LazyVim to use it
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "zenwritten",
--     },
--   },
-- }
--
--
--
--
--
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night", -- or "storm", "moon", "day"
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
      sidebars = { "qf", "help" },
      day_brightness = 0.3,
      hide_inactive_statusline = false,
      dim_inactive = false,
      lualine_bold = false,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}

-- ~/.config/nvim/lua/plugins/colorscheme.lua

-- return {
--   -- One Dark Pro with ultra-dark background
--   {
--     "olimorris/onedarkpro.nvim",
--     priority = 1000,
--     config = function()
--       require("onedarkpro").setup({
--         theme = "onedark_dark", -- darker variant with deeper backgrounds
--         dark_theme = "onedark_dark",
--         light_theme = "onelight",
--         colors = {
--           -- Very dark background to match your goal image exactly
--           bg = "#1a1a1a", -- very dark gray (not pure black but close)
--           bg_darker = "#0f0f0f", -- even darker
--           bg_statusline = "#2a2a2a", -- slightly lighter for statusline
--           cursorline = "#2a2a2a", -- subtle cursor line
--           sidebar = "#1a1a1a", -- matching sidebar
--           float_bg = "#2a2a2a", -- floating windows
--           menu_bg = "#2a2a2a", -- menus and popups
--           -- Very muted, professional colors like your goal image
--           fg = "#d4d4d4", -- main text color (soft white)
--           red = "#d19a66", -- muted orange-red for keywords
--           green = "#608b4e", -- very muted green for strings
--           yellow = "#dcdcaa", -- soft yellow
--           blue = "#569cd6", -- muted blue for types
--           purple = "#c586c0", -- soft purple for functions
--           cyan = "#4ec9b0", -- muted cyan
--           orange = "#ce9178", -- soft orange
--           gray = "#6a9955", -- muted green-gray for comments
--         },
--         highlights = {
--           -- Very muted words to match your goal image
--           Comment = { fg = "#6a9955", italic = true }, -- muted green comments
--           Keyword = { fg = "#9a9a9a" }, -- very muted gray keywords like 'const', 'import'
--           String = { fg = "#b8b8b8" }, -- muted gray strings
--           Function = { fg = "#c0c0c0" }, -- muted light gray functions
--           Variable = { fg = "#d4d4d4" }, -- main text color variables (very muted)
--           Type = { fg = "#b0b0b0" }, -- muted gray types
--           Constant = { fg = "#d4d4d4" }, -- main text color constants
--           Number = { fg = "#a8d8a8" }, -- soft green numbers (slightly more visible)
--           Boolean = { fg = "#9a9a9a" }, -- muted gray booleans
--           Operator = { fg = "#ffd700" }, -- bright gold operators (symbols pop!)
--           Identifier = { fg = "#d4d4d4" }, -- main text color
--
--           -- TreeSitter specific highlights - muted words, colorful symbols
--           ["@keyword"] = { fg = "#9a9a9a" }, -- very muted gray keywords
--           ["@keyword.function"] = { fg = "#9a9a9a" }, -- muted gray function keywords
--           ["@keyword.return"] = { fg = "#9a9a9a" }, -- muted gray return
--           ["@string"] = { fg = "#b8b8b8" }, -- muted gray strings
--           ["@function"] = { fg = "#c0c0c0" }, -- muted light gray functions
--           ["@function.call"] = { fg = "#c0c0c0" }, -- muted light gray function calls
--           ["@method"] = { fg = "#c0c0c0" }, -- muted light gray methods
--           ["@method.call"] = { fg = "#c0c0c0" }, -- muted light gray method calls
--           ["@variable"] = { fg = "#d4d4d4" }, -- main text color variables
--           ["@parameter"] = { fg = "#d4d4d4" }, -- main text color parameters
--           ["@property"] = { fg = "#d4d4d4" }, -- main text color properties
--           ["@type"] = { fg = "#b0b0b0" }, -- muted gray types
--           ["@number"] = { fg = "#a8d8a8" }, -- soft green numbers
--           ["@boolean"] = { fg = "#9a9a9a" }, -- muted gray booleans
--           ["@constant"] = { fg = "#d4d4d4" }, -- main text color constants
--
--           -- Symbols and punctuation - these should POP with color!
--           ["@operator"] = { fg = "#ffd700" }, -- bright gold operators
--           ["@punctuation"] = { fg = "#ffd700" }, -- bright gold punctuation
--           ["@punctuation.bracket"] = { fg = "#ff6b6b" }, -- bright red/orange brackets
--           ["@punctuation.delimiter"] = { fg = "#66d9ef" }, -- bright cyan delimiters (commas, semicolons)
--           ["@punctuation.special"] = { fg = "#c586c0" }, -- purple for special punctuation
--
--           -- Background elements
--           Normal = { bg = "#1a1a1a", fg = "#d4d4d4" }, -- dark gray main editor
--           NormalFloat = { bg = "#2a2a2a" }, -- slightly lighter floating windows
--           NormalNC = { bg = "#1a1a1a" }, -- dark gray non-current windows
--           SignColumn = { bg = "#1a1a1a" }, -- dark gray git signs column
--           LineNr = { bg = "#1a1a1a", fg = "#858585" }, -- dark gray line numbers
--           CursorLineNr = { bg = "#2a2a2a", fg = "#d4d4d4" }, -- highlighted current line number
--           StatusLine = { bg = "#2a2a2a" }, -- slightly lighter status line
--           TabLine = { bg = "#1a1a1a" }, -- dark gray tab line
--           TabLineFill = { bg = "#1a1a1a" }, -- dark gray tab line fill
--           WinSeparator = { fg = "#3e3e3e", bg = "#1a1a1a" }, -- subtle window separators
--         },
--         styles = {
--           types = "NONE",
--           methods = "NONE",
--           numbers = "NONE",
--           strings = "NONE",
--           comments = "italic",
--           keywords = "bold",
--           constants = "NONE",
--           functions = "italic",
--           operators = "NONE",
--           variables = "NONE",
--           parameters = "NONE",
--           conditionals = "NONE",
--           virtual_text = "NONE",
--         },
--         options = {
--           bold = true,
--           italic = true,
--           underline = true,
--           undercurl = true,
--           cursorline = true,
--           transparency = false,
--           terminal_colors = true,
--           highlight_inactive_windows = false,
--         },
--       })
--       vim.cmd("colorscheme onedark_dark")
--     end,
--   },
--
--   -- Configure LazyVim to use the colorscheme
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "onedark_dark", -- using the darker variant
--     },
--   },
-- }
