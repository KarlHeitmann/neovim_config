-- USAGE:
-- With Telescope extensions:
-- :Telescope dir live_grep
-- :Telescope dir find_files
--
-- With User commands:
-- With User commands
-- The plugin creates two user commands:
-- :GrepInDirectory
-- :FileInDirectory

return {
  "princejoogie/dir-telescope.nvim",
  config = function()
    require("dir-telescope").setup({
      set_hidden = true,
      no_ignore = false,
      show_preview = true,
      follow_symlinks = false,
    })
    -- Load the extension within the config
    require("telescope").load_extension("dir")
  end,
  dependencies = {
    { "nvim-telescope/telescope.nvim" },
    { "nvim-lua/plenary.nvim" },
  },

  keys = {
    -- { "<leader>fd", "<cmd>Telescope dir live_grep<CR>", mode = "n", silent = true, desc = "Telescope dir live_grep" },
    -- { "<leader>pd", "<cmd>Telescope dir find_files<CR>", mode = "n", silent = true, desc = "Telescope dir find_files" },
    { "<space>fd", "<cmd>GrepInDirectory<CR>", mode = "n", silent = true, desc = "GrepInDirectory" },
    { "<space>pd", "<cmd>FileInDirectory<CR>", mode = "n", silent = true, desc = "FileInDirectory" },
  },
  -- Add the specific extension commands to the 'cmd' list
  cmd = { "Telescope", "Telescope dir live_grep", "Telescope dir find_files", "GrepInDirectory", "FileInDirectory" },
}

