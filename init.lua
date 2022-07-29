-- vim.lsp.set_log_level("debug")
vim.cmd([[
  set list listchars=tab:>\ ,trail:-,eol:$
]])

require('plugins')
local use = require('packer').use
-- XXX: recordar que para usar packer, hay que correr el comando para instalar las cosas!!!
-- XXX: Hay que correr ademas el comando :PackerInstall u otro similar para instalar estos paquetes dentro de la startup function, de lo contrario los paquetes no se van a instalar por si solos
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- ANTIGUOS Plug
  use 'scrooloose/nerdtree'
  use 'simrat39/rust-tools.nvim'
  use 'ellisonleao/gruvbox.nvim'
  -- FIN ANTIGUOS Plug

  -- Debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'

  use 'puremourning/vimspector'
  -- END DEBUGGING
  --
  -- use 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  use 'nvim-treesitter/nvim-treesitter'
  use 'ThePrimeagen/harpoon' -- harpoon para con cierto comando buscar archivos y hacer unos grep mejorados con rust
  -- use 'junegunn/fzf', { 'do': { -> fzf#install() } }
  use 'junegunn/fzf' --, { 'do': { -> fzf#install() } }
  use 'junegunn/fzf.vim' -- fuzzy finder

  -- git blame
  -- use 'f-person/git-blame.nvim'

  -- ansiesc.vim: with :AnsiEsc you can toggle wether you can see text colorized on vim that has Ansi Escape characters or not. Nice to use with rails logger information
  use 'powerman/vim-plugin-AnsiEsc'

  -- neoterm, to make easier to handle the terminal on vim
  use 'kassio/neoterm'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  --[[ -- Visual Git Plugin for Neovim to enhance your git experience
  use {
    'tanvirtin/vgit.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  --]]

  -- vim fugitive, to work with git
  use 'tpope/vim-fugitive'
end)


vim.cmd([[
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
]])

--vim.cmd([[
--	packadd! vimspector
--	let g:vimspector_enable_mappings = 'HUMAN'
--]])

vim.cmd([[
  " This is the default option:
  "   - Preview window on the right with 50% width
  "   - CTRL-/ will toggle preview window.
  " - Note that this array is passed as arguments to fzf#vim#with_preview function.
  " - To learn more about preview window options, see `--preview-window` section of `man fzf`.
  let g:fzf_preview_window = ['right:50%', 'ctrl-/']

  " Preview window on the upper side of the window with 40% height,
  " hidden by default, ctrl-/ to toggle
  let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

  " Empty value to disable preview window altogether
  let g:fzf_preview_window = []
]])


-- use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client

--require('lspconfig')

vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[
  colorscheme gruvbox
  let g:vimspector_enable_mappings = 'HUMAN'
]])

require('nvim_cmp')
require('general_settings')

require('telescope').setup{
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      vertical = { width = 0.5, height = 0.75 }
      -- other layout configuration here
    },
    -- layout_config = { height = 0.95 },
  },
}

--[[
require('telescope').setup({
  defaults = {
    layout_config = {
      vertical = { width = 0.5 }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  -- other configuration values here
})
--]]

-- :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.5}})
-- require('lspconfig').pyright.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup({})
require'lspconfig'.solargraph.setup{}

require('lsp_keybindings')

vim.cmd([[
  set tabstop=2     " tabs are at proper location
  set expandtab     " don't use actual tab character (ctrl-v)
  set shiftwidth=2  " indenting is 4 spaces
  set autoindent    " turns it on
  set smartindent   " does the right thing (mostly) in programs
  set cindent       " stricter rules for C programs
  set pastetoggle=<f12>
]])

require('basic_mappings')
-- require('vgit_configuration')

--local bo = { noremap=true, silent=true, buffer=bufnr }
--vim.keymap.set('n', '<leader>hm', require("harpoon.ui").toggle_quick_menu(), bo)
  --" :lua require("harpoon-menu")()<CR>


