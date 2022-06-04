vim.cmd([[
  syntax on
  filetype plugin indent on
  let mapleader = "º"

  set nu
  set relativenumber
  set mouse=a

  colorscheme gruvbox


  set tabstop=2     " tabs are at proper location
  set expandtab     " don't use actual tab character (ctrl-v)
  set shiftwidth=2  " indenting is 4 spaces
  set autoindent    " turns it on
  set smartindent   " does the right thing (mostly) in programs
  set cindent       " stricter rules for C programs
  set pastetoggle=<f12>

  let hlstate=1
  nnoremap <leader><space> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>

]])
