local opts = {
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  wrap = false,
  termguicolors = true,
  number = true,
  relativenumber = true,
}

-- Set options from table
for opt, val in pairs(opts) do
  vim.o[opt] = val
end

-- Set other options
local colorscheme = require("helpers.colorscheme")
vim.cmd.colorscheme(colorscheme)

--  set tabstop=2     " tabs are at proper location
--  set expandtab     " don't use actual tab character (ctrl-v)
--  set shiftwidth=2  " indenting is 4 spaces
--  set autoindent    " turns it on
--  set smartindent   " does the right thing (mostly) in programs
--  set cindent       " stricter rules for C programs
--  set pastetoggle=<f12>
