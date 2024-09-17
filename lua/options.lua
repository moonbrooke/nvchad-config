require "nvchad.options"

local o = vim.o
local g = vim.g
-- o.cursorlineopt ='both' -- to enable cursorline!

o.termguicolors = true
o.cursorline = true
o.encoding = "UTF-8"
o.ruler = true
o.title = true

-- line numbers
o.number = true
o.relativenumber = false

-- tabs & indent
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

-- line wrapping
o.wrap = false