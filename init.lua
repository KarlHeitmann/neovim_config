
require('plugins')
local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  -- use 'nfdsfsdeovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)

--vim.cmd([[
--	packadd! vimspector
--	let g:vimspector_enable_mappings = 'HUMAN'
--]])



-- use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client

--require('lspconfig')

vim.cmd([[
  call plug#begin()
  Plug 'neovim/nvim-lspconfig'
  Plug 'scrooloose/nerdtree'
  Plug 'simrat39/rust-tools.nvim'
  Plug 'ellisonleao/gruvbox.nvim'

  """ Debugging
  Plug 'nvim-lua/plenary.nvim'
  Plug 'mfussenegger/nvim-dap'

  Plug 'neovim/nvim-lspconfig'
  call plug#end()
]])

vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

require('general_settings')
require('basic_mappings')

-- require('lspconfig').pyright.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup({})
require'lspconfig'.solargraph.setup{}

require('lsp_keybindings')

