vim.cmd("hi clear")
vim.cmd("syntax reset")
vim.g.colors_name = "stoicsgodot"

local colors = {
  -- Base colors
  background = "#161a24",  -- Darker than original #202531
  foreground = "#eeffff",
  accent = "#007acc",
  tab_bg = "#1d212e",      -- Darker than original #262C3B
  widget_bg = "#1d212e",   -- Darker than original #262C3B
  sidebar_bg = "#1d212e",  -- Darker than original #262C3B
  statusline_bg = "#1d212e", -- Darker than original #262C3B
  darker_bg = "#252b3a",   -- Darker than original #333B4F
  selection = "#3e4556",   -- Darker than original #515662
  hover = "#252b3a",       -- Darker than original #333b4f
  
  -- Syntax colors
  comment = "#546E7A",
  invalid = "#FF5370",
  keyword = "#C792EA",
  operator = "#89DDFF",
  tag = "#f07178",
  function_color = "#82AAFF",
  variable = "#f07178",
  number = "#F78C6C",
  string = "#C3E88D",
  class = "#FFCB6B",
  type = "#B2CCD6",
  attribute = "#C792EA",
  regex = "#89DDFF",
  
  -- GDScript specific
  gd_keyword = "#ff7085",
  gd_operator = "#abc8ff",
  gd_function = "#57b3ff",
  gd_builtin = "#ff7085",
  gd_member = "#bce0ff",
  gd_inherited = "#42ffc2",
  gd_library = "#42ffc2",
  gd_class = "#8effda",
  gd_string = "#ffeca1",
  gd_nodepath = "#63c259",
}

-- Basic highlighting
vim.api.nvim_set_hl(0, "Normal", { fg = colors.foreground, bg = colors.background })
vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment, italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = colors.number })
vim.api.nvim_set_hl(0, "String", { fg = colors.string })
vim.api.nvim_set_hl(0, "Character", { fg = colors.string })
vim.api.nvim_set_hl(0, "Number", { fg = colors.number })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Float", { fg = colors.number })
vim.api.nvim_set_hl(0, "Identifier", { fg = colors.variable })
vim.api.nvim_set_hl(0, "Function", { fg = colors.function_color })
vim.api.nvim_set_hl(0, "Statement", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Conditional", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Repeat", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Label", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.operator })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Exception", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "PreProc", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Include", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Define", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Macro", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "PreCondit", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Type", { fg = colors.type })
vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Structure", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Typedef", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Special", { fg = colors.function_color })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = colors.regex })
vim.api.nvim_set_hl(0, "Tag", { fg = colors.tag })
vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.operator })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = colors.comment })
vim.api.nvim_set_hl(0, "Debug", { fg = colors.invalid })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "Ignore", {})
vim.api.nvim_set_hl(0, "Error", { fg = colors.invalid })
vim.api.nvim_set_hl(0, "Todo", { fg = colors.keyword, bold = true })

-- UI highlighting
vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.darker_bg })
vim.api.nvim_set_hl(0, "Cursor", { reverse = true })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.darker_bg })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.darker_bg })
vim.api.nvim_set_hl(0, "Directory", { fg = colors.function_color })
vim.api.nvim_set_hl(0, "DiffAdd", { fg = colors.string })
vim.api.nvim_set_hl(0, "DiffChange", { fg = colors.class })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = colors.invalid })
vim.api.nvim_set_hl(0, "DiffText", { fg = colors.function_color })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.invalid })
vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.tab_bg, bg = colors.tab_bg })
vim.api.nvim_set_hl(0, "Folded", { fg = colors.comment })
vim.api.nvim_set_hl(0, "FoldColumn", {})
vim.api.nvim_set_hl(0, "SignColumn", {})
vim.api.nvim_set_hl(0, "IncSearch", { bg = colors.selection })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.comment })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.foreground })
vim.api.nvim_set_hl(0, "MatchParen", { underline = true })
vim.api.nvim_set_hl(0, "ModeMsg", {})
vim.api.nvim_set_hl(0, "MoreMsg", {})
vim.api.nvim_set_hl(0, "NonText", { fg = colors.comment })
vim.api.nvim_set_hl(0, "Pmenu", { bg = colors.tab_bg })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.selection })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.tab_bg })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.selection })
vim.api.nvim_set_hl(0, "Question", { fg = colors.string })
vim.api.nvim_set_hl(0, "Search", { bg = colors.selection })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = colors.comment })
vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = colors.invalid })
vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = colors.class })
vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = colors.string })
vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = colors.function_color })
vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.statusline_bg })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = colors.tab_bg })
vim.api.nvim_set_hl(0, "TabLine", { bg = colors.tab_bg })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = colors.tab_bg })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = colors.darker_bg })
vim.api.nvim_set_hl(0, "Title", { fg = colors.class })
vim.api.nvim_set_hl(0, "Visual", { bg = colors.selection })
vim.api.nvim_set_hl(0, "VisualNOS", {})
vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.class })
vim.api.nvim_set_hl(0, "WildMenu", { bg = colors.selection })

-- TreeSitter
vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
vim.api.nvim_set_hl(0, "@error", { link = "Error" })
vim.api.nvim_set_hl(0, "@operator", { link = "Operator" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@punctuation.special", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@string", { link = "String" })
vim.api.nvim_set_hl(0, "@string.regex", { link = "SpecialChar" })
vim.api.nvim_set_hl(0, "@string.escape", { link = "SpecialChar" })
vim.api.nvim_set_hl(0, "@character", { link = "Character" })
vim.api.nvim_set_hl(0, "@number", { link = "Number" })
vim.api.nvim_set_hl(0, "@boolean", { link = "Boolean" })
vim.api.nvim_set_hl(0, "@float", { link = "Float" })
vim.api.nvim_set_hl(0, "@function", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.gd_builtin })
vim.api.nvim_set_hl(0, "@function.call", { link = "Function" })
vim.api.nvim_set_hl(0, "@method", { link = "Function" })
vim.api.nvim_set_hl(0, "@method.call", { link = "Function" })
vim.api.nvim_set_hl(0, "@constructor", { link = "Function" })
vim.api.nvim_set_hl(0, "@parameter", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@keyword", { fg = colors.gd_keyword })
vim.api.nvim_set_hl(0, "@keyword.function", { link = "@keyword" })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = colors.gd_operator })
vim.api.nvim_set_hl(0, "@conditional", { link = "Conditional" })
vim.api.nvim_set_hl(0, "@repeat", { link = "Repeat" })
vim.api.nvim_set_hl(0, "@label", { link = "Label" })
vim.api.nvim_set_hl(0, "@include", { link = "Include" })
vim.api.nvim_set_hl(0, "@exception", { link = "Exception" })
vim.api.nvim_set_hl(0, "@type", { link = "Type" })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.gd_library })
vim.api.nvim_set_hl(0, "@type.definition", { link = "Typedef" })
vim.api.nvim_set_hl(0, "@storageclass", { link = "StorageClass" })
vim.api.nvim_set_hl(0, "@attribute", { fg = colors.attribute })
vim.api.nvim_set_hl(0, "@field", { fg = colors.gd_member })
vim.api.nvim_set_hl(0, "@property", { fg = colors.gd_member })
vim.api.nvim_set_hl(0, "@variable", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.gd_keyword })
vim.api.nvim_set_hl(0, "@constant", { link = "Constant" })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.gd_keyword })
vim.api.nvim_set_hl(0, "@constant.macro", { link = "Define" })
vim.api.nvim_set_hl(0, "@namespace", { link = "Include" })
vim.api.nvim_set_hl(0, "@symbol", { link = "String" })
vim.api.nvim_set_hl(0, "@text", { link = "Normal" })
vim.api.nvim_set_hl(0, "@text.strong", { bold = true })
vim.api.nvim_set_hl(0, "@text.emphasis", { italic = true })
vim.api.nvim_set_hl(0, "@text.underline", { underline = true })
vim.api.nvim_set_hl(0, "@text.strike", { strikethrough = true })
vim.api.nvim_set_hl(0, "@text.title", { link = "Title" })
vim.api.nvim_set_hl(0, "@text.literal", { link = "String" })
vim.api.nvim_set_hl(0, "@text.uri", { underline = true })
vim.api.nvim_set_hl(0, "@text.math", { link = "Special" })
vim.api.nvim_set_hl(0, "@text.environment", { link = "Macro" })
vim.api.nvim_set_hl(0, "@text.environment.name", { link = "Type" })
vim.api.nvim_set_hl(0, "@text.reference", { link = "Constant" })
vim.api.nvim_set_hl(0, "@text.todo", { link = "Todo" })
vim.api.nvim_set_hl(0, "@text.note", { link = "SpecialComment" })
vim.api.nvim_set_hl(0, "@text.warning", { link = "WarningMsg" })
vim.api.nvim_set_hl(0, "@text.danger", { link = "ErrorMsg" })
vim.api.nvim_set_hl(0, "@tag", { link = "Tag" })
vim.api.nvim_set_hl(0, "@tag.attribute", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@tag.delimiter", { link = "Delimiter" })

-- GDScript specific highlighting
vim.api.nvim_set_hl(0, "gdscriptKeyword", { fg = colors.gd_keyword })
vim.api.nvim_set_hl(0, "gdscriptOperator", { fg = colors.gd_operator })
vim.api.nvim_set_hl(0, "gdscriptFunction", { fg = colors.gd_function })
vim.api.nvim_set_hl(0, "gdscriptBuiltinFunction", { fg = colors.gd_builtin })
vim.api.nvim_set_hl(0, "gdscriptMemberVariable", { fg = colors.gd_member })
vim.api.nvim_set_hl(0, "gdscriptInheritedClass", { fg = colors.gd_inherited })
vim.api.nvim_set_hl(0, "gdscriptLibraryClass", { fg = colors.gd_library })
vim.api.nvim_set_hl(0, "gdscriptClass", { fg = colors.gd_class })
vim.api.nvim_set_hl(0, "gdscriptString", { fg = colors.gd_string })
vim.api.nvim_set_hl(0, "gdscriptNodePath", { fg = colors.gd_nodepath })

-- LSP
vim.api.nvim_set_hl(0, "LspReferenceText", { underline = true })
vim.api.nvim_set_hl(0, "LspReferenceRead", { underline = true })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { underline = true })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultError", { fg = colors.invalid })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultWarning", { fg = colors.class })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultInformation", { fg = colors.function_color })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultHint", { fg = colors.string })

-- Git
vim.api.nvim_set_hl(0, "DiffAdd", { fg = colors.string })
vim.api.nvim_set_hl(0, "DiffChange", { fg = colors.class })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = colors.invalid })
vim.api.nvim_set_hl(0, "DiffText", { fg = colors.function_color })
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.string })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.class })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.invalid })

-- Plugins
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = colors.function_color })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = colors.comment })
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = colors.sidebar_bg })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = colors.sidebar_bg, fg = colors.sidebar_bg })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = colors.function_color, bold = true })
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = colors.class })
vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = colors.string })
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = colors.invalid })

vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = colors.tab_bg, bg = colors.tab_bg })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.selection, bg = colors.selection })
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = colors.foreground, bg = colors.selection })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = colors.invalid, bg = colors.selection })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = colors.tab_bg })
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = colors.tab_bg, bg = colors.string })
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = colors.tab_bg, bg = colors.invalid })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = colors.tab_bg, bg = colors.tab_bg })
vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = colors.selection })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = colors.function_color, bg = colors.selection })



	-- vim.opt.fillchars:append({ eob = " " })
