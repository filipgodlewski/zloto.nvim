return {
   SignColumn = { bg = "background" },
   ColorColumn = { bg = "dim.black" },
   FoldColumn = { bg = "dim.black" },

   Search = { fg = "background", bg = "accent" },
   IncSearch = { fg = "background", bg = "accent" },
   CurSearch = { fg = "background", bg = "accent" },

   Cursor = {}, -- TODO: add missing color
   lCursor = { fg = "bg", bg = "fg" },
   CursorIM = {}, -- TODO: add missing color
   CursorColumn = {}, -- TODO: add missing color
   CursorLine = { bg = "dim.black" },
   CursorLineFold = {}, -- TODO: add missing color
   CursorLineNr = { fg = "accent", bg = "dim.black" },
   CursorLineSign = { bg = "dim.black" },
   TermCursor = {}, -- TODO: add missing color
   TermCursorNC = {}, -- TODO: add missing color

   LineNr = { fg = "dim.black" },
   LineNrAbove = { fg = "dim.black" },
   LineNrBelow = { fg = "dim.black" },

   Directory = {}, -- TODO: add missing color

   DiffAdd = { fg = "bright.green", bg = "dim.green" },
   DiffChange = { fg = "bright.yellow", bg = "dim.yellow" },
   DiffDelete = { fg = "bright.red", bg = "dim.red" },
   DiffText = { fg = "bright.blue", bg = "dim.blue" },

   Normal = { fg = "foreground", bg = "background" },
   NormalFloat = {}, -- TODO: add missing color
   NormalNC = {}, -- TODO: add missing color
   Folded = {}, -- TODO: add missing color
   MatchParen = {}, -- TODO: add missing color
   EndOfBuffer = {}, -- TODO: add missing color
   NonText = { fg = "dim.black" },
   Whitespace = { link = "NonText" },
   Conceal = {}, -- TODO: add missing color
   Error = { fg = "bright.red" },
   ErrorMsg = { fg = "bright.red" },
   WarningMsg = { fg = "bright.yellow" },

   ModeMsg = {}, -- TODO: add missing color
   MoreMsg = {}, -- TODO: add missing color
   MsgArea = {}, -- TODO: add missing color
   MsgSeparator = {}, -- TODO: add missing color

   Pmenu = {}, -- TODO: add missing color
   PmenuSbar = {}, -- TODO: add missing color
   PmenuSel = {}, -- TODO: add missing color
   PmenuThumb = {}, -- TODO: add missing color

   WildMenu = {}, -- TODO: add missing color
   WinBar = {}, -- TODO: add missing color
   WinBarNC = {}, -- TODO: add missing color
   WinSeparator = {}, -- TODO: add missing color

   SpellBad = {}, -- TODO: add missing color
   SpellCap = {}, -- TODO: add missing color
   SpellLocal = {}, -- TODO: add missing color
   SpellRare = {}, -- TODO: add missing color

   Visual = { bg = "dim.blue" },
   VisualNOS = { fg = "bright.cyan", bg = "dim.black" },

   QuickFixLine = {}, -- TODO: add missing color
   qfLineNr = {}, -- TODO: add missing color
   qfFileName = {}, -- TODO: add missing color

   StatusLine = { fg = "foreground", bg = "background" },
   StatusLineNC = {}, -- TODO: add missing color
   TabLine = {}, -- TODO: add missing color
   TabLineFill = {}, -- TODO: add missing color
   TabLineSel = {}, -- TODO: add missing color
   SpecialKey = {}, -- TODO: add missing color

   Boolean = { fg = "accent", bold = true },
   Character = {}, -- TODO: add missing color
   Comment = { fg = "bright.black", italic = true },
   Conditional = {}, -- TODO: add missing color
   Constant = {}, -- TODO: add missing color
   Debug = {}, -- TODO: add missing color
   Define = {}, -- TODO: add missing color
   Delimiter = {}, -- TODO: add missing color
   Exception = {}, -- TODO: add missing color
   Float = { fg = "accent" },
   Function = { fg = "normal.blue" },
   Identifier = {}, -- TODO: add missing color
   Include = {}, -- TODO: add missing color
   Keyword = {}, -- TODO: add missing color
   Label = {}, -- TODO: add missing color
   Macro = {}, -- TODO: add missing color
   Number = { fg = "accent" },
   Operator = {}, -- TODO: add missing color
   PreCondit = {}, -- TODO: add missing color
   PreProc = {}, -- TODO: add missing color
   Question = {}, -- TODO: add missing color
   Repeat = {}, -- TODO: add missing color
   Special = {}, -- TODO: add missing color
   SpecialComment = {}, -- TODO: add missing color
   SpecialChar = {}, -- TODO: add missing color
   Statement = {}, -- TODO: add missing color
   StorageClass = {}, -- TODO: add missing color
   String = { fg = "dim.white" },
   Structure = {}, -- TODO: add missing color
   Tag = {}, -- TODO: add missing color
   Title = {}, -- TODO: add missing color
   Todo = {}, -- TODO: add missing color
   Type = {}, -- TODO: add missing color
   Typedef = {}, -- TODO: add missing color

   Bold = { bold = true },
   Italic = { italic = true },
   Underlined = { fg = "bright.blue", underline = true },
}
