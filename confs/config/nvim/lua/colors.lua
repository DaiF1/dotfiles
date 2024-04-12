-- General colors
local o = vim.opt
local g = vim.g

-- colorscheme
o.termguicolors = true
g.ayucolor = "dark"
pcall(vim.cmd, 'colorscheme ayu')

-- highlight cursor line
pcall(vim.cmd, 'highlight CursorLine term=NONE cterm=NONE ctermbg=236 ctermfg=NONE')

-- Color at 80 characters
o.colorcolumn = "80"
