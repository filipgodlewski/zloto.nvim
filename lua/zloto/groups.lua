local M = {}

M.highlights = {}

M.setup = function(colors, opts)
   local C = colors

   local highlights = {
      builtin = {
         SignColumn = { bg = C.background },
         ColorColumn = { bg = C.dim.black },
         FoldColumn = { bg = C.dim.black },

         Search = { fg = C.background, bg = C.accent },
         IncSearch = { fg = C.background, bg = C.accent },
         CurSearch = { fg = C.background, bg = C.accent },

         Cursor = {},
         lCursor = { fg = C.bg, bg = C.fg },
         CursorIM = {},
         CursorColumn = {},
         CursorLine = { bg = C.dim.black },
         CursorLineFold = {},
         CursorLineNr = { fg = C.accent, bg = C.dim.black },
         CursorLineSign = { bg = C.dim.black },
         TermCursor = {},
         TermCursorNC = {},

         LineNr = { fg = C.dim.black },
         LineNrAbove = { fg = C.dim.black },
         LineNrBelow = { fg = C.dim.black },

         Directory = {},

         DiffAdd = { fg = C.bright.green, bg = C.dim.green },
         DiffChange = { fg = C.bright.yellow, bg = C.dim.yellow },
         DiffDelete = { fg = C.bright.red, bg = C.dim.red },
         DiffText = { fg = C.bright.blue, bg = C.dim.blue },

         Normal = { fg = C.foreground, bg = C.background },
         NormalFloat = {},
         NormalNC = {},
         Folded = {},
         MatchParen = {},
         EndOfBuffer = {},
         NonText = { fg = C.dim.black },
         Whitespace = { fg = C.dim.black },
         Conceal = {},
         Error = { fg = C.bright.red },
         ErrorMsg = { fg = C.bright.red },
         WarningMsg = { fg = C.bright.yellow },

         ModeMsg = {},
         MoreMsg = {},
         MsgArea = {},
         MsgSeparator = {},

         Pmenu = {},
         PmenuSbar = {},
         PmenuSel = {},
         PmenuThumb = {},

         WildMenu = {},
         WinBar = {},
         WinBarNC = {},
         WinSeparator = {},

         SpellBad = {},
         SpellCap = {},
         SpellLocal = {},
         SpellRare = {},

         Visual = { bg = C.dim.blue },
         VisualNOS = { fg = C.bright.cyan, bg = C.dim.black },

         QuickFixLine = {},
         qfLineNr = {},
         qfFileName = {},

         StatusLine = { fg = C.foreground, bg = C.background },
         StatusLineNC = {},
         TabLine = {},
         TabLineFill = {},
         TabLineSel = {},
         SpecialKey = {},

         Boolean = { fg = C.accent, bold = true },
         Character = {},
         Comment = { fg = C.bright.black, italic = true },
         Conditional = {},
         Constant = {},
         Debug = {},
         Define = {},
         Delimiter = {},
         Exception = {},
         Float = { fg = C.accent },
         Function = { fg = C.normal.blue },
         Identifier = {},
         Include = {},
         Keyword = {},
         Label = {},
         Macro = {},
         Number = { fg = C.accent },
         Operator = {},
         PreCondit = {},
         PreProc = {},
         Question = {},
         Repeat = {},
         Special = {},
         SpecialComment = {},
         SpecialChar = {},
         Statement = {},
         StorageClass = {},
         String = { fg = C.dim.white },
         Structure = {},
         Tag = {},
         Title = {},
         Todo = {},
         Type = {},
         Typedef = {},

         Bold = { bold = true },
         Italic = { italic = true },
         Underlined = { fg = C.bright.blue, underline = true },
      },

      diagnostic = {
         DiagnosticError = {},
         DiagnosticWarn = {},
         DiagnosticInfo = {},
         DiagnosticHint = {},

         DiagnosticVirtualTextError = {},
         DiagnosticVirtualTextWarn = {},
         DiagnosticVirtualTextInfo = {},
         DiagnosticVirtualTextHint = {},

         DiagnosticUnderlineError = {},
         DiagnosticUnderlineWarn = {},
         DiagnosticUnderlineInfo = {},
         DiagnosticUnderlineHint = {},

         DiagnosticFloatingError = {},
         DiagnosticFloatingWarn = {},
         DiagnosticFloatingInfo = {},
         DiagnosticFloatingHint = {},

         DiagnosticSignError = {},
         DiagnosticSignWarn = {},
         DiagnosticSignInfo = {},
         DiagnosticSignHint = {},
      },

      lsp = {
         LspReferenceText = {},
         LspReferenceRead = {},
         LspReferenceWrite = {},
         LspCodeLens = {},
         LspCodeLensSeparator = {},
         LspSignatureActiveParameter = {},
      },

      telescope = {
         TelescopeTitle = {},
         TelescopeBorder = {},
         TelescopeResultsNormal = {},
         TelescopeMatching = {},
         TelescopePromptCounter = {},
      },

      treesitter = {
         ["@text.literal"] = { fg = C.bright.black, italic = true }, -- Comment
         ["@text.reference"] = {}, -- Identifier
         ["@text.title"] = {}, -- Title
         ["@text.uri"] = { fg = C.bright.blue, underline = true }, -- Underlined
         ["@text.underline"] = { fg = C.bright.blue, underline = true }, -- Underlined
         ["@text.todo"] = {}, -- Todo

         ["@comment"] = { fg = C.bright.black, italic = true }, -- Comment
         ["@punctuation"] = {}, -- Delimiter

         ["@constant"] = {}, -- Constant
         ["@constant.builtin"] = {}, -- Special
         ["@constant.macro"] = {}, -- Define
         ["@define"] = {}, -- Define
         ["@macro"] = {}, -- Macro
         ["@string"] = { fg = C.dim.white }, -- String
         ["@string.escape"] = {}, -- SpecialChar
         ["@string.special"] = {}, -- SpecialChar
         ["@character"] = {}, -- Character
         ["@character.special"] = {}, -- SpecialChar
         ["@number"] = { fg = C.accent }, -- Number
         ["@boolean"] = { fg = C.accent, bold = true }, -- Boolean
         ["@float"] = { fg = C.accent }, -- Float

         ["@function"] = { fg = C.normal.blue }, -- Function
         ["@function.builtin"] = {}, -- Special
         ["@function.macro"] = {}, -- Macro
         ["@parameter"] = {}, -- Identifier
         ["@method"] = {}, -- Function
         ["@field"] = {}, -- Identifier
         ["@property"] = {}, -- Identifier
         ["@constructor"] = {}, -- Special

         ["@conditional"] = {}, -- Conditional
         ["@repeat"] = {}, -- Repeat
         ["@label"] = {}, -- Label
         ["@operator"] = {}, -- Operator
         ["@keyword"] = {}, -- Keyword
         ["@exception"] = {}, -- Exception

         ["@variable"] = {}, -- Identifier
         ["@type"] = {}, -- Type
         ["@type.definition"] = {}, -- Typedef
         ["@storageclass"] = {}, -- StorageClass
         ["@structure"] = {}, -- Structure
         ["@namespace"] = {}, -- Identifier
         ["@include"] = {}, -- Include
         ["@preproc"] = {}, -- PreProc
         ["@debug"] = {}, -- Debug
         ["@tag"] = {}, -- Tag
      },
   }
   return vim.tbl_deep_extend("force", {}, highlights, opts or {})
end

return M
