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
         MatchParen = { bg = C.bright.black },
         EndOfBuffer = { fg = C.background },
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
         Conditional = { fg = C.normal.cyan },
         Constant = {},
         Debug = {},
         Define = {},
         Delimiter = { fg = C.normal.white },
         Exception = {},
         Float = { fg = C.accent },
         Function = { fg = C.normal.blue },
         Identifier = { fg = C.bright.white },
         Include = {},
         Keyword = { fg = C.normal.blue },
         Label = {},
         Macro = {},
         Number = { fg = C.accent },
         Operator = {},
         PreCondit = {},
         PreProc = {},
         Question = {},
         Repeat = {},
         Special = { fg = C.normal.red },
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
         DiagnosticError = { fg = C.bright.red },
         DiagnosticWarn = { fg = C.bright.yellow },
         DiagnosticInfo = { fg = C.bright.blue },
         DiagnosticHint = { fg = C.bright.green },

         DiagnosticVirtualTextError = { fg = C.bright.red, bg = C.dim.red },
         DiagnosticVirtualTextWarn = { fg = C.bright.yellow, bg = C.dim.yellow },
         DiagnosticVirtualTextInfo = { fg = C.bright.blue, bg = C.dim.blue },
         DiagnosticVirtualTextHint = { fg = C.bright.green, bg = C.dim.green },

         DiagnosticUnderlineError = { fg = C.bright.red },
         DiagnosticUnderlineWarn = { fg = C.bright.yellow },
         DiagnosticUnderlineInfo = { fg = C.bright.blue },
         DiagnosticUnderlineHint = { fg = C.bright.green },

         DiagnosticFloatingError = { fg = C.bright.red },
         DiagnosticFloatingWarn = { fg = C.bright.yellow },
         DiagnosticFloatingInfo = { fg = C.bright.blue },
         DiagnosticFloatingHint = { fg = C.bright.green },

         DiagnosticSignError = { fg = C.bright.red },
         DiagnosticSignWarn = { fg = C.bright.yellow },
         DiagnosticSignInfo = { fg = C.bright.blue },
         DiagnosticSignHint = { fg = C.bright.green },
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
         ["@error"] = { fg = C.bright.red },
         ["@text.literal"] = { fg = C.bright.black, italic = true },
         ["@text.reference"] = { fg = C.normal.blue },
         ["@text.title"] = {}, -- Title
         ["@text.uri"] = { fg = C.bright.blue, underline = true },
         ["@text.underline"] = { fg = C.bright.blue, underline = true },
         ["@text.todo"] = { fg = C.bright.magenta },

         ["@comment"] = { fg = C.bright.black, italic = true },
         ["@punctuation"] = { fg = C.normal.white },
         ["@punctuation.bracket"] = { fg = C.normal.magenta },

         ["@constant"] = { fg = C.normal.green },
         ["@constant.builtin"] = { fg = C.accent },
         ["@constant.macro"] = {}, -- Define
         ["@define"] = {}, -- Define
         ["@macro"] = {}, -- Macro
         ["@string"] = { fg = C.dim.white },
         ["@string.escape"] = {}, -- SpecialChar
         ["@string.special"] = {}, -- SpecialChar
         ["@character"] = {}, -- Character
         ["@character.special"] = {}, -- SpecialChar
         ["@number"] = { fg = C.accent },
         ["@boolean"] = { fg = C.accent, bold = true },
         ["@float"] = { fg = C.accent },

         ["@function"] = { fg = C.normal.blue },
         ["@function.builtin"] = { fg = C.normal.red },
         ["@function.macro"] = {}, -- Macro
         ["@parameter"] = { fg = C.bright.white },
         ["@method"] = {}, -- Function
         ["@field"] = { fg = C.normal.blue },
         ["@property"] = {}, -- Identifier
         ["@constructor"] = { fg = C.normal.magenta },

         ["@conditional"] = { fg = C.normal.cyan },
         ["@repeat"] = {}, -- Repeat
         ["@label"] = {}, -- Label
         ["@operator"] = {}, -- Operator
         ["@keyword"] = { fg = C.normal.blue },
         ["@keyword.return"] = { fg = C.normal.cyan, bold = true, italic = true },
         ["@exception"] = {}, -- Exception

         ["@variable"] = { fg = C.normal.blue },
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
