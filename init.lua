
require('plugins')
local use = require('packer').use
-- XXX: recordar que para usar packer, hay que correr el comando para instalar las cosas!!!
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  -- use 'nfdsfsdeovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'neovim/nvim-lspconfig'
  use 'scrooloose/nerdtree'
  use 'simrat39/rust-tools.nvim'
  use 'ellisonleao/gruvbox.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'

  use 'neovim/nvim-lspconfig'
end)

--vim.cmd([[
--	packadd! vimspector
--	let g:vimspector_enable_mappings = 'HUMAN'
--]])



-- use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client

--require('lspconfig')

vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

require('general_settings')
require('basic_mappings')

-- require('lspconfig').pyright.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup({})
require'lspconfig'.solargraph.setup{}

require('lsp_keybindings')

