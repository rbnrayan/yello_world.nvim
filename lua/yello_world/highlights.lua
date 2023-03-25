local highlights = {}

local function get_colors()
  local bg = vim.o.background
  local palette = require('yello_world.palette')

  local colors = {
    fg = palette.font_light,
    fg_alt = palette.white,
    bg = palette.background,
    bg_alt = palette.background_alt,
    gray = palette.gray,
    accent = palette.yellow,
    green = palette.green,
    slate = palette.slate,
    brown = palette.brown,
    warning = palette.warning,
    error = palette.error,
  }
  local light_colors = {
    fg = palette.background,
    fg_alt = palette.black,
    bg = palette.font_light_alt,
    bg_alt = palette.font_light,
    gray = palette.gray,
    accent = palette.blue,
    green = palette.green_alt,
    slate = palette.blue,
    brown = palette.brown,
    warning = palette.warning_alt,
    error = palette.error,
  }

  if bg == "light" then
    colors = light_colors
  end

  return colors
end

highlights.groups = function()
  local colors = get_colors()

  local groups = {
    -- vim base highlight groups
    -- Cursor = { fg = colors.bg, bg = colors.accent },
    -- lCursor = { fg = colors.bg, bg = colors.accent },
    CursorIM = { fg = colors.bg, bg = colors.accent },
    CursorColumn = { fg = colors.fg, bg = colors.bg_alt },
    CursorLine = { bg = colors.bg },
    Directory = { fg = colors.fg, bg = colors.bg },
    DiffAdd = { fg = colors.green, bg = colors.bg },
    DiffChange = { fg = colors.warning, bg = colors.bg },
    DiffDelete = { fg = colors.error, bg = colors.bg },
    DiffText = { fg = colors.green, bg = colors.bg },
    EndOfBuffer = { fg = colors.gray, bg = colors.bg },
    TermCursor = { fg = colors.bg, bg = colors.accent },
    TermCursorNC = { fg = colors.bg, bg = colors.bg_alt },
    ErrorMsg = { fg = colors.error },
    WinSeparator = { fg = colors.gray, bg = colors.bg },
    Folded = { fg = colors.brown },
    SignColumn = { bg = colors.bg },
    IncSearch = { fg = colors.fg, bg = colors.bg_alt },
    Substitute = { fg = colors.fg, bg = colors.bg_alt },
    LineNr = { fg = colors.fg },
    LineNrAbove = { fg = colors.gray },
    LineNrBelow = { fg = colors.gray },
    CursorLineNr = { bg = colors.bg },
    CursorLineSign = { bg = colors.bg },
    MatchParen = { fg = colors.accent },
    ModeMsg = { fg = colors.fg, bg = colors.bg },
    MsgArea = { fg = colors.fg, bg = colors.bg },
    MsgSeparator = { fg = colors.fg_alt, bg = colors.bg },
    MoreMsg = { fg = colors.fg, bg = colors.bg },
    NonText = { fg = colors.fg, bg = colors.bg },
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { link = 'Normal' },
    NormalNC = { link = 'Normal' },
    Pmenu = { fg = colors.bg, bg = colors.fg_alt },
    PmenuSel = { fg = colors.bg, bg = colors.accent },
    PmenuSbar = { bg = colors.bg_alt },
    PmenuThumb = { bg = colors.fg_alt },
    Question = { fg = colors.warning },
    Search = { fg = colors.fg, bg = colors.bg_alt },
    SpecialKey = { fg = colors.gray, bg = colors.bg },
    SpellBad = { fg = colors.error, bg = colors.bg, undercurl = true },
    SpellCap = { fg = colors.warning, bg = colors.bg, undercurl = true },
    SpellLocal = { fg = colors.warning, bg = colors.bg, undercurl = true },
    SpellRare = { fg = colors.warning, bg = colors.bg, undercurl = true },
    StatusLine = { fg = colors.fg, bg = colors.bg },
    StatusLineNC = { fg = colors.gray, bg = colors.bg },
    Tabline = { bg = colors.bg },
    TablineFill = { bg = colors.bg },
    TablineSel = { fg = colors.fg, bg = colors.bg },
    Title = { fg = colors.accent },
    VertSplit = { fg = colors.gray, bg = colors.bg },
    Visual = { bg = colors.bg_alt },
    VisualNOS = { bg = colors.bg_alt },
    WarningMsg = { fg = colors.warning },
    Whitespace = { fg = colors.gray },
    WildMenu = { fg = colors.bg, bg = colors.accent },
    Error = { fg = colors.error },
    Todo = { fg = colors.brown },
    RedrawDebugClear = { fg = colors.fg, bg = colors.accent },
    RedrawDebugComposed = { fg = colors.fg, bg = colors.green },
    RedrawDebugRecomposed = { fg = colors.fg, bg = colors.error },

    Constant = { fg = colors.fg },
    String = { fg = colors.green },
    Character = { fg = colors.green },
    Boolean = { fg = colors.green },
    Identifier = { fg = colors.fg },
    Operator = { fg = colors.fg },
    Statement = { fg = colors.accent },
    Conditional = { fg = colors.accent },
    Repeat = { fg = colors.accent },
    Label = { fg = colors.accent },
    Keyword = { fg = colors.accent },
    Exception = { fg = colors.accent },
    PreProc = { fg = colors.slate },
    Type = { fg = colors.slate },
    Structure = { fg = colors.accent },
    Special = { fg = colors.fg },
    Comment = { fg = colors.brown },
    SpecialComment = { link = 'Comment' },
    StorageClass = { fg = colors.accent },

    -- diagnostics hightlight groups (LSP)
    DiagnosticError = { fg = colors.error },
    DiagnosticWarn = { fg = colors.warning },
    DiagnosticInfo = { fg = colors.fg_alt },
    DiagnosticHint = { fg = colors.green },
    DiagnosticUnderlineError = { sp = colors.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.warning, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.fg_alt, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.green, undercurl = true },
    DiagnosticUnderlineVirtualTextError = { sp = colors.error, undercurl = true },
    DiagnosticUnderlineVirtualTextWarn = { sp = colors.warning, undercurl = true },
    DiagnosticUnderlineVirtualTextInfo = { sp = colors.fg_alt, undercurl = true },
    DiagnosticUnderlineVirtualTextHint = { sp = colors.green, undercurl = true },
    DiagnosticFloatingError = { link = 'DiagnosticError' },
    DiagnosticFloatingWarn = { link = 'DiagnosticWarn' },
    DiagnosticFloatingInfo = { link = 'DiagnosticInfo' },
    DiagnosticFloatingHint = { link = 'DiagnosticHint' },
    DiagnosticSignError = { link = 'DiagnosticError' },
    DiagnosticSignWarn = { link = 'DiagnosticWarn' },
    DiagnosticSignInfo = { link = 'DiagnosticInfo' },
    DiagnosticSignHint = { link = 'DiagnosticHint' },

    -- nvim highlight groups
    NvimInternalError = { fg = colors.fg, bg = colors.error, undercurl = true },

    -- nvimtree highlight groups
    NvimTreeWindowPicker = { fg = colors.fg, bg = colors.accent },
    NvimTreeIndentMarker = { fg = colors.fg },
    NvimTreeFolderIcon = { fg = colors.fg },

    -- cmp highlight groups
    CmpItemAbbr = { fg = colors.fg },
    CmpItemAbbrMatch = { fg = colors.fg, bold = true },
    CmpItemAbbrDeprecated = { fg = colors.gray, strikethrough = true },
    CmpItemMenu = { fg = colors.green },
    CmpItemMatchFuzzy = { fg = colors.fg_alt },

    -- Treesitter highlight groups
    TSStorageClass = { fg = colors.accent },
    TSNamespace = { fg = colors.fg },
    TSTypeDefenition = { fg = colors.fg },
    TSConstant = { fg = colors.fg },
    TSTypeQualifier = { fg = colors.fg },
    TSTitle = { fg = colors.fg },
    TSFuncMacro = { fg = colors.fg },
    TSType = { fg = colors.fg },

    -- language specific highlight groups

    -- lua
    luaSymbolOperator = { fg = colors.fg },
    luaBlock = { fg = colors.accent },
    luaFunctionBlock = { fg = colors.accent },
    luaCondEnd = { fg = colors.accent },
    luaCondElseif = { fg = colors.accent },
    luaCondStart = { fg = colors.accent },
    luaStatement = { fg = colors.accent },
    luaWhile = { fg = colors.accent },

    -- rust
    rustModPath = { fg = colors.fg },
    rustAssert = { fg = colors.fg },
    rustType = { fg = colors.fg },
    rustIndetifier = { fg = colors.fg },
    rustSelf = { fg = colors.fg, bold = true },

    -- TS
    typescriptIdentifier = { fg = colors.fg, bold = true },
    typescriptOperator = { fg = colors.accent },
    typescriptVariable = { fg = colors.accent },
    typescriptDOMFormProp = { fg = colors.fg },
    typescriptPaymentShippingOptionProp = { fg = colors.fg },
    typescriptCall = { fg = colors.fg },

    -- JS
    javaScriptIdentifier = { bold = true },

    -- C
    Typedef = { link = 'Keyword' },
    cType = { fg = colors.slate },
    cTSType = { link = 'cType' },
    cppStatement = { fg = colors.accent },
  }

  return groups
end

return highlights
