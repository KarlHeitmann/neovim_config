vim.cmd([[
  nnoremap <F7> :NERDTreeToggle<CR>
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l
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
]])

