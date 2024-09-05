local map = require("helpers.keys").map

-- Blazingly fast way out of insert mode
map("i", "jk", "<esc>")

-- Quick access to some common actions
map("n", "<leader>fw", "<cmd>w<cr>", "Write")
map("n", "<leader>fa", "<cmd>wa<cr>", "Write all")
map("n", "<leader>qq", "<cmd>q<cr>", "Quit")
map("n", "<leader>qa", "<cmd>qa!<cr>", "Quit all")
map("n", "<leader>dw", "<cmd>close<cr>", "Window")

-- Diagnostic keymaps
map('n', 'gx', vim.diagnostic.open_float, "Show diagnostics under cursor")

-- Easier access to beginning and end of lines
map("n", "<M-h>", "^", "Go to beginning of line")
map("n", "<M-l>", "$", "Go to end of line")

-- Better window navigation
map("n", "<C-h>", "<C-w><C-h>", "Navigate windows to the left")
map("n", "<C-j>", "<C-w><C-j>", "Navigate windows down")
map("n", "<C-k>", "<C-w><C-k>", "Navigate windows up")
map("n", "<C-l>", "<C-w><C-l>", "Navigate windows to the right")

map("n", "<A-h>", "<C-w>h", "Navigate windows to the left")
map("n", "<A-j>", "<C-w>j", "Navigate windows to the down")
map("n", "<A-k>", "<C-w>k", "Navigate windows to the up")
map("n", "<A-l>", "<C-w>l", "Navigate windows to the right")

map("t", "<A-h>", "<C-\\><C-N><C-w>h", "Navigate windows to the left")
map("t", "<A-j>", "<C-\\><C-N><C-w>j", "Navigate windows to the down")
map("t", "<A-k>", "<C-\\><C-N><C-w>k", "Navigate windows to the up")
map("t", "<A-l>", "<C-\\><C-N><C-w>l", "Navigate windows to the right")

map("i", "<A-h>", "<C-\\><C-N><C-w>h", "Navigate windows to the left")
map("i", "<A-j>", "<C-\\><C-N><C-w>j", "Navigate windows to the down")
map("i", "<A-k>", "<C-\\><C-N><C-w>k", "Navigate windows to the up")
map("i", "<A-l>", "<C-\\><C-N><C-w>l", "Navigate windows to the right")

-- Move with shift-arrows
map("n", "<S-Left>", "<C-w><S-h>", "Move window to the left")
map("n", "<S-Down>", "<C-w><S-j>", "Move window down")
map("n", "<S-Up>", "<C-w><S-k>", "Move window up")
map("n", "<S-Right>", "<C-w><S-l>", "Move window to the right")

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Deleting buffers
local buffers = require("helpers.buffers")
map("n", "<leader>db", buffers.delete_this, "Current buffer")
map("n", "<leader>do", buffers.delete_others, "Other buffers")
map("n", "<leader>da", buffers.delete_all, "All buffers")

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")

-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Switch between light and dark modes
map("n", "<leader>ut", function()
	if vim.o.background == "dark" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end, "Toggle between light and dark themes")

-- Clear after search
map("n", "<leader>ur", "<cmd>nohl<cr>", "Clear highlights")

map("n", "<leader>i", ":split<cr>", "Split current window")
map("n", "<leader>s", ":vsplit<cr>", "Vertical split current window")
map("n", "<leader>c", ":close<cr>", "Close current window")

--  TERMINAL COMMANDS :help terminal-emulator
--  To map <Esc> to exit terminal-mode: >
--    :tnoremap <Esc> <C-\><C-n>
map("t", "<Esc>", "<C-\\><C-n>", "map <Esc> to exit terminal-mode")

--    :tnoremap <A-h> <C-\><C-N><C-w>h
--    :tnoremap <A-j> <C-\><C-N><C-w>j
--    :tnoremap <A-k> <C-\><C-N><C-w>k
--    :tnoremap <A-l> <C-\><C-N><C-w>l

--    :tnoremap <A-h> <C-\><C-N><C-w>h
--    :tnoremap <A-j> <C-\><C-N><C-w>j
--    :tnoremap <A-k> <C-\><C-N><C-w>k
--    :tnoremap <A-l> <C-\><C-N><C-w>l

--    :inoremap <A-h> <C-\><C-N><C-w>h
--    :inoremap <A-j> <C-\><C-N><C-w>j
--    :inoremap <A-k> <C-\><C-N><C-w>k
--    :inoremap <A-l> <C-\><C-N><C-w>l

--    :nnoremap <A-h> <C-w>h
--    :nnoremap <A-j> <C-w>j
--    :nnoremap <A-k> <C-w>k
--    :nnoremap <A-l> <C-w>l


