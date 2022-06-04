vim.cmd([[
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.vimrc
]])

require('plugins')

vim.cmd([[
	packadd! vimspector
	let g:vimspector_enable_mappings = 'HUMAN'
]])

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  -- use 'nfdsfsdeovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
end)

-- use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client

--require('lspconfig')

vim.cmd([[
  call plug#begin()
  Plug 'neovim/nvim-lspconfig'
  Plug 'simrat39/rust-tools.nvim'

  """ Debugging
  Plug 'nvim-lua/plenary.nvim'
  Plug 'mfussenegger/nvim-dap'

  Plug 'neovim/nvim-lspconfig'
  call plug#end()
]])

-- require('lspconfig').pyright.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup({})
require'lspconfig'.solargraph.setup{}

require('lsp_keybindings')


