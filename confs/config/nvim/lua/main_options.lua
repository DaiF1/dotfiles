local o = vim.opt
local g = vim.g

-- numbers
o.number = true
o.relativenumber = true

-- enable syntax highlighting
o.syntax = on
o.filetype = on

-- disable sidebar lsp info
o.signcolumn = "no"

-- use system clipboard
o.clipboard = "unnamedplus"

-- tab and indent
o.autoindent = true
o.smartindent = true
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

g.load_doxygen_syntax = 1
-- g.doxygen_enhanced_color = 1
