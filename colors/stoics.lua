vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end

vim.o.termguicolors = true
vim.g.colors_name = "stoics"
-- Background and foreground
vim.api.nvim_set_hl(0, "Normal", { fg = "#E6E6E6", bg = "#1A1A1A" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#E6E6E6", bg = "#252525" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#444444", bg = "#252525" })

-- Line numbers
vim.api.nvim_set_hl(0, "LineNr", { fg = "#555555", bg = "#1A1A1A" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FF5370", bg = "#252525", bold = true })
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#555555" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#555555" })

-- Syntax highlights
vim.api.nvim_set_hl(0, "Comment", { fg = "#545454", italic = true })
vim.api.nvim_set_hl(0, "String", { fg = "#C3E88D" })
vim.api.nvim_set_hl(0, "Number", { fg = "#F78C6C" })
vim.api.nvim_set_hl(0, "Boolean", { fg = "#FF5370" })

vim.api.nvim_set_hl(0, "Function", { fg = "#82AAFF" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#C792EA" }) -- variables and identifiers
vim.api.nvim_set_hl(0, "Keyword", { fg = "#C792EA", italic = true })
vim.api.nvim_set_hl(0, "Operator", { fg = "#89DDFF" })
vim.api.nvim_set_hl(0, "Type", { fg = "#FFCB6B" })
vim.api.nvim_set_hl(0, "StorageClass", { fg = "#FF5370", italic = true })

-- Treesitter groups
vim.api.nvim_set_hl(0, "@property", { fg = "#C792EA" })
vim.api.nvim_set_hl(0, "@field", { fg = "#C792EA" })
vim.api.nvim_set_hl(0, "@variable", { fg = "#E6E6E6" })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#FF5370" })
vim.api.nvim_set_hl(0, "@parameter", { fg = "#FFCB6B" })
vim.api.nvim_set_hl(0, "@namespace", { fg = "#C792EA" })
vim.api.nvim_set_hl(0, "@constructor", { fg = "#FFCB6B" })

-- Punctuation
vim.api.nvim_set_hl(0, "Delimiter", { fg = "#89DDFF" })
vim.api.nvim_set_hl(0, "MatchParen", { bg = "#444444", fg = "#E6E6E6", bold = true })

-- Cursor and selection
vim.api.nvim_set_hl(0, "Cursor", { fg = "#1A1A1A", bg = "#FFCB6B" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#444444" })
vim.api.nvim_set_hl(0, "Search", { bg = "#5C5C5C", fg = "#E6E6E6" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#FFCB6B", fg = "#1A1A1A" })

-- Status line and tabs
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#E6E6E6", bg = "#252525" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#555555", bg = "#252525" })
vim.api.nvim_set_hl(0, "TabLine", { fg = "#555555", bg = "#252525" })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#FF5370", bg = "#252525" })

-- Diff
vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#1E3A21" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#2A2A3C" })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#3A1E1E" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "#3A3A5C" })

-- Special
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#FF5370", bg = "#1A1A1A" })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#FFCB6B", bg = "#1A1A1A" })
vim.api.nvim_set_hl(0, "Todo", { fg = "#1A1A1A", bg = "#FFCB6B", bold = true })
vim.api.nvim_set_hl(0, "Underlined", { fg = "#82AAFF", underline = true })


-- Enable line numbers
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Line number highlights
vim.cmd("hi LineNr cterm=bold gui=bold")
vim.cmd("hi LineNr guifg=#a6e3a1")
vim.cmd("hi LineNrAbove guifg=#04a5e5")
vim.cmd("hi LineNrBelow guifg=#ea76cb")

-- Background override
-- vim.cmd("hi Normal guibg=#11111b")
--
-- Functions
vim.api.nvim_set_hl(0, "Function", { fg = "#82AAFF" }) -- standard
vim.api.nvim_set_hl(0, "@function", { fg = "#82AAFF" }) -- Tree-sitter
vim.api.nvim_set_hl(0, "@function.call", { fg = "#82AAFF" })

-- Classes
vim.api.nvim_set_hl(0, "Type", { fg = "#FFCB6B" }) -- standard
vim.api.nvim_set_hl(0, "@type", { fg = "#FFCB6B" }) -- Tree-sitter
vim.api.nvim_set_hl(0, "@type.definition", { fg = "#FFCB6B" })
vim.api.nvim_set_hl(0, "@class", { fg = "#FFD580" }) -- Optional: distinct for classes



local function create_journal_entry()
  local date = os.date("%Y-%m-%d")
  local home = os.getenv("HOME")
  local journal_dir = home .. "/.Journal"
  local journal_file = journal_dir .. "/" .. date .. ".md"

  -- Create the directory if it doesn't exist
  vim.fn.mkdir(journal_dir, "p")

  -- Write the heading to the new file
  local header = "# " .. date .. "\n \n Dear Logos,"
  local file = io.open(journal_file, "w")
  if file then
    file:write(header)
    file:close()
  else
    vim.notify("Failed to create journal file: " .. journal_file, vim.log.levels.ERROR)
    return
  end

  -- Open the file in a new buffer
  vim.cmd("edit " .. journal_file)
end

-- To map this to a command in Neovim:

vim.api.nvim_create_user_command("LogosToday", create_journal_entry, {})
local function marcus()
  vim.cmd("hi LineNr cterm=bold gui=bold")
  vim.cmd("hi LineNr guifg=#a6e3a1")
  vim.cmd("hi LineNrAbove guifg=#04a5e5")
  vim.cmd("hi LineNrBelow guifg=#ea76cb")
end

local function seneca()
  vim.cmd("hi LineNr cterm=bold gui=bold")
  vim.api.nvim_set_hl(0, "LineNr",       { fg = "#a0a0a0", bg = "#1a1a1a", bold = true })  -- current line
  vim.api.nvim_set_hl(0, "LineNrAbove",  { fg = "#666666", bg = "#1a1a1a" })               -- lines above
  vim.api.nvim_set_hl(0, "LineNrBelow",  { fg = "#666666", bg = "#1a1a1a" })               -- lines below
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bg = "#04a5e5", bold = true })  -- highlighted line
end

local function epictitus()
  vim.cmd("hi LineNr cterm=bold gui=bold")
  vim.api.nvim_set_hl(0, "LineNr",       { fg = "#a0a0a0", bg = "#1a1a1a", bold = true })  -- current line
  vim.api.nvim_set_hl(0, "LineNrAbove",  { fg = "#666666", bg = "#1a1a1a" })               -- lines above
  vim.api.nvim_set_hl(0, "LineNrBelow",  { fg = "#666666", bg = "#1a1a1a" })               -- lines below
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bg = "#1a1a1a", bold = true })  -- highlighted line
end
vim.api.nvim_create_user_command("StoicsMarcus", marcus, {})
vim.api.nvim_create_user_command("StoicsSeneca", seneca, {})
vim.api.nvim_create_user_command("StoicsEpictitus", epictitus, {})

vim.api.nvim_create_user_command("StoicsEpictitus", epictitus, {})
	vim.opt.fillchars:append({ eob = " " })
