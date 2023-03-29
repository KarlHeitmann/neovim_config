vim.cmd([[
  nnoremap <leader>1 :Gitexplorer<CR>
  nnoremap <F7> :NERDTreeToggle<CR>
  nnoremap <leader>d ?\<Detail\><CR>
  nnoremap <C-B> ?\<binding\><CR>
  nnoremap <C-b> /\<binding\><CR>
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l
  nnoremap · *
  nnoremap <leader>i :split<CR>
  nnoremap <leader>s :vsplit<CR>
  nnoremap <leader>c :close<CR>
  nnoremap gc :tabclose<CR>

  " Find files using Telescope command-line sugar.
  nnoremap <leader>ff <cmd>Telescope find_files<cr>
  nnoremap <leader>fg <cmd>Telescope live_grep<cr>
  nnoremap <leader>fb <cmd>Telescope buffers<cr>
  nnoremap <leader>fh <cmd>Telescope help_tags<cr>

  nmap <leader>hm :lua require("harpoon.ui").toggle_quick_menu()<CR>
  nmap <leader>ha :lua require("harpoon.mark").add_file()<CR>
  nmap <leader>ha :lua require("harpoon.mark").add_file()<CR>

  nmap <leader>hn :lua require("harpoon.ui").nav_next()<CR>
  nmap <leader>hb :lua require("harpoon.ui").nav_prev()<CR>

  nmap <leader>b :lua require("harpoon.ui").nav_prev()<CR>

  " TERMINAL COMMANDS :help terminal-emulator
  " To map <Esc> to exit terminal-mode: >
    :tnoremap <Esc> <C-\><C-n>

  " To simulate |i_CTRL-R| in terminal-mode: >
    :tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

  " To use `ALT+{h,j,k,l}` to navigate windows from any mode: >
    :tnoremap <A-h> <C-\><C-N><C-w>h
    :tnoremap <A-j> <C-\><C-N><C-w>j
    :tnoremap <A-k> <C-\><C-N><C-w>k
    :tnoremap <A-l> <C-\><C-N><C-w>l
    :inoremap <A-h> <C-\><C-N><C-w>h
    :inoremap <A-j> <C-\><C-N><C-w>j
    :inoremap <A-k> <C-\><C-N><C-w>k
    :inoremap <A-l> <C-\><C-N><C-w>l
    :nnoremap <A-h> <C-w>h
    :nnoremap <A-j> <C-w>j
    :nnoremap <A-k> <C-w>k
    :nnoremap <A-l> <C-w>l

]])

