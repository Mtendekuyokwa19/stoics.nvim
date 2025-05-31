
-- colors/mytheme.lua
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end

vim.o.termguicolors = true
vim.g.colors_name = "stoics"

-- Define highlight groups
vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff", bg = "#1e1e1e" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#888888", italic = true })
vim.api.nvim_set_hl(0, "Function", { fg = "#ff8800" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#ff5fff", bold = true })
-- Add more groups as needed
