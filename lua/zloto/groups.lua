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

         Cursor = { fg = C.bg, bg = C.fg },
         lCursor = { fg = C.bg, bg = C.fg },
         CursorIM = { fg = C.bg, bg = C.fg },
         CursorColumn = { bg = C.dim.black },
         CursorLine = { bg = C.dim.black },
         CursorLineFold = { bg = C.dim.black },
         CursorLineNr = { fg = C.accent, bg = C.dim.black },
         CursorLineSign = { bg = C.dim.black },
         TermCursor = { fg = C.background, bg = C.foreground },
         TermCursorNC = { fg = C.background, bg = C.foreground },

         LineNr = { fg = C.accent },
         LineNrAbove = { fg = C.dim.black },
         LineNrBelow = { fg = C.dim.black },

         Directory = { fg = C.bright.white },

         DiffAdd = { fg = C.bright.green, bg = C.dim.green },
         DiffChange = { fg = C.bright.yellow, bg = C.dim.yellow },
         DiffDelete = { fg = C.bright.red, bg = C.dim.red },
         DiffText = { fg = C.bright.blue, bg = C.dim.blue },

         Normal = { fg = C.foreground, bg = C.background },
         NormalFloat = { fg = C.foreground, bg = C.background },
         NormalNC = { fg = C.normal.cyan },
         Folded = { fg = C.dim.white, bg = C.dim.blue },
         MatchParen = { bg = C.bright.black },
         EndOfBuffer = { fg = C.background },
         NonText = { fg = C.dim.black },
         Whitespace = { fg = C.dim.black },
         Conceal = { fg = C.bright.white },
         Error = { fg = C.bright.red },
         ErrorMsg = { fg = C.bright.red },
         WarningMsg = { fg = C.bright.yellow },

         ModeMsg = { fg = C.dim.white },
         MoreMsg = { fg = C.bright.yellow },
         MsgArea = { fg = C.foreground, bg = C.background },
         MsgSeparator = { fg = C.dim.white },

         Pmenu = { fg = C.foreground, bg = C.background3 },
         PmenuSbar = { bg = C.dim.black },
         PmenuSel = { fg = C.accent, bg = C.dim.blue, bold = true },
         PmenuThumb = { bg = C.bright.yellow },

         WildMenu = { fg = C.accent, bg = C.normal.red, bold = true },
         WinBar = { fg = C.foreground, bg = C.background },
         WinBarNC = { fg = C.normal.red, bg = C.background },
         WinSeparator = { fg = C.dim.black },

         SpellBad = { fg = C.bright.red },
         SpellCap = { fg = C.bright.green },
         SpellLocal = { fg = C.bright.blue },
         SpellRare = { fg = C.bright.yellow },

         Visual = { bg = C.dim.blue },
         VisualNOS = { fg = C.bright.cyan, bg = C.dim.black },

         QuickFixLine = { bg = C.dim.black },
         qfLineNr = { fg = C.accent },
         qfFileName = { fg = C.bright.white },

         StatusLine = { fg = C.foreground, bg = C.background },
         StatusLineNC = { fg = C.normal.red, bg = C.background },
         TabLine = { fg = C.dim.white, bg = C.dim.blue },
         TabLineFill = { bg = C.background },
         TabLineSel = { fg = C.accent, bg = C.normal.red },
         SpecialKey = { fg = C.bright.white },

         Boolean = { fg = C.accent, bold = true },
         Character = { fg = C.bright.white },
         Comment = { fg = C.bright.black, italic = true },
         Conditional = { fg = C.normal.cyan },
         Constant = { fg = C.normal.green },
         Debug = { fg = C.normal.blue },
         Define = { fg = C.normal.blue },
         Delimiter = { fg = C.normal.white },
         Exception = { fg = C.bright.red, bold = true, italic = true },
         Float = { fg = C.accent },
         Function = { fg = C.normal.blue },
         Identifier = { fg = C.bright.white },
         Include = { fg = C.normal.blue },
         Keyword = { fg = C.normal.blue },
         Label = { fg = C.normal.blue },
         Macro = { fg = C.normal.blue },
         Number = { fg = C.accent },
         Operator = { fg = C.bright.magenta },
         PreCondit = { fg = C.normal.blue },
         PreProc = { fg = C.normal.blue },
         Question = { fg = C.bright.yellow },
         Repeat = { fg = C.normal.blue },
         Special = { fg = C.normal.red },
         SpecialComment = { fg = C.bright.white },
         SpecialChar = { fg = C.bright.white },
         Statement = { fg = C.normal.blue },
         StorageClass = { fg = C.normal.blue },
         String = { fg = C.dim.white },
         Structure = { fg = C.normal.blue },
         Tag = { fg = C.normal.blue },
         Title = { fg = C.accent },
         Todo = { fg = C.bright.magenta },
         Type = { fg = C.dim.white },
         Typedef = { fg = C.normal.blue },

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
         DiagnosticVirtualTextInfo = { fg = C.bright.green, bg = C.dim.green },
         DiagnosticVirtualTextHint = { fg = C.bright.blue, bg = C.dim.blue },

         DiagnosticUnderlineError = { fg = C.bright.red },
         DiagnosticUnderlineWarn = { fg = C.bright.yellow },
         DiagnosticUnderlineInfo = { fg = C.bright.green },
         DiagnosticUnderlineHint = { fg = C.bright.blue },

         DiagnosticFloatingError = { fg = C.bright.red },
         DiagnosticFloatingWarn = { fg = C.bright.yellow },
         DiagnosticFloatingInfo = { fg = C.bright.green },
         DiagnosticFloatingHint = { fg = C.bright.blue },

         DiagnosticSignError = { fg = C.bright.red },
         DiagnosticSignWarn = { fg = C.bright.yellow },
         DiagnosticSignInfo = { fg = C.bright.green },
         DiagnosticSignHint = { fg = C.bright.blue },
      },

      lsp = {
         LspReferenceText = { fg = C.background, bg = C.accent },
         LspReferenceRead = { fg = C.background, bg = C.accent },
         LspReferenceWrite = { fg = C.background, bg = C.accent },
         LspCodeLens = { fg = C.foreground, italic = true },
         LspCodeLensSeparator = { fg = C.foreground },
         LspSignatureActiveParameter = { fg = C.accent, bold = true },
      },

      telescope = {
         TelescopeTitle = { fg = C.background3, bg = C.accent },
         TelescopeBorder = { fg = C.background3, bg = C.background3 },
         TelescopeNormal = { fg = C.foreground, bg = C.background3 },
         TelescopeMatching = { fg = C.accent, bold = true },
         TelescopeResultsBorder = { fg = C.normal.black, bg = C.normal.black },
         TelescopeResultsNormal = { fg = C.foreground, bg = C.normal.black },
         TelescopePromptCounter = { fg = C.bright.yellow },
         TelescopePromptPrefix = { fg = C.bright.yellow },
         TelescopePreviewBorder = { fg = C.background2, bg = C.background2 },
         TelescopePreviewNormal = { fg = C.foreground, bg = C.background2 },
      },

      treesitter = {
         ["@error"] = { fg = C.bright.red },
         ["@text.literal"] = { fg = C.bright.black, italic = true },
         ["@text.reference"] = { fg = C.normal.blue },
         ["@text.title"] = { fg = C.normal.blue },
         ["@text.uri"] = { fg = C.bright.blue, underline = true },
         ["@text.underline"] = { fg = C.bright.blue, underline = true },
         ["@text.todo"] = { fg = C.bright.magenta },

         ["@comment"] = { fg = C.bright.black, italic = true },
         ["@punctuation"] = { fg = C.normal.white },
         ["@punctuation.bracket"] = { fg = C.normal.magenta },
         ["@punctuation.special"] = { fg = C.bright.yellow },

         ["@constant"] = { fg = C.normal.green },
         ["@constant.builtin"] = { fg = C.accent },
         ["@constant.macro"] = { fg = C.normal.blue },
         ["@define"] = { fg = C.normal.blue },
         ["@macro"] = { fg = C.normal.blue },
         ["@spell"] = { fg = C.dim.white },
         ["@string"] = { fg = C.dim.white },
         ["@string.escape"] = { fg = C.bright.white },
         ["@string.special"] = { fg = C.bright.white },
         ["@character"] = { fg = C.bright.white },
         ["@character.special"] = { fg = C.bright.white },
         ["@number"] = { fg = C.accent },
         ["@boolean"] = { fg = C.accent, bold = true },
         ["@float"] = { fg = C.accent },

         ["@function"] = { fg = C.normal.blue },
         ["@function.builtin"] = { fg = C.normal.red },
         ["@function.macro"] = { fg = C.normal.blue },
         ["@parameter"] = { fg = C.bright.white },
         ["@method"] = { fg = C.normal.blue },
         ["@field"] = { fg = C.normal.blue },
         ["@property"] = { fg = C.bright.white },
         ["@constructor"] = { fg = C.normal.magenta },

         ["@conditional"] = { fg = C.normal.cyan },
         ["@repeat"] = { fg = C.normal.blue },
         ["@label"] = { fg = C.normal.blue },
         ["@operator"] = { fg = C.normal.blue },
         ["@keyword"] = { fg = C.normal.blue },
         ["@keyword.return"] = { fg = C.normal.cyan, bold = true, italic = true },
         ["@keyword.operator"] = { fg = C.bright.white },
         ["@exception"] = { fg = C.bright.red, bold = true, italic = true },

         ["@attribute"] = { fg = C.normal.green, italic = true },
         ["@variable"] = { fg = C.bright.white },
         ["@variable.builtin"] = { fg = C.normal.red, italic = true },
         ["@type"] = { fg = C.dim.white },
         ["@type.definition"] = { fg = C.normal.blue },
         ["@storageclass"] = { fg = C.normal.blue },
         ["@structure"] = { fg = C.normal.blue },
         ["@namespace"] = { fg = C.bright.white },
         ["@include"] = { fg = C.normal.blue },
         ["@preproc"] = { fg = C.normal.blue },
         ["@debug"] = { fg = C.normal.blue },
         ["@tag"] = { fg = C.normal.blue },
      },
   }
   return vim.tbl_deep_extend("force", {}, highlights, opts or {})
end

return M
