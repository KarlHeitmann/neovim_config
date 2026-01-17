-- Telescope fuzzy finding (all the things)
return {
  {
    "nvim-telescope/telescope.nvim",
    -- dir = "/home/karl/github/KarlHeitmann/nvim_plugins/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
    },
    config = function()
      local actions = require('telescope.actions')

      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<C-u>"] = false,
              ["<C-d>"] = false,
            },
            n = {
              -- ["<C-l>"] = actions.send_to_locflist + actions.open_locflist,
              -- ["<C-l>"] = actions.send_to_loclist
              ["<C-l>"] = actions.send_to_loclist + actions.open_loclist,
              ["<M-l>"] = actions.send_selected_to_loclist + actions.open_loclist
            }
          },
        },
      })

      -- Enable telescope fzf native, if installed
      pcall(require("telescope").load_extension, "fzf")

      local map = require("helpers.keys").map
      -- map("n", "<space>fr", require("telescope.builtin").oldfiles, "Recently opened")
      map("n", "<space>fr", function()
        require("telescope.builtin").oldfiles({ only_cwd = true })
      end, "Recently opened")
      -- map("n", "<space><space>", require("telescope.builtin").buffers, "Open buffers")
      map("n", "<space>sb", require("telescope.builtin").buffers, "Open buffers")
      map("n", "<space>/", require("telescope.builtin").current_buffer_fuzzy_find, "Search in current buffer")
      -- map("n", "<space>/", function()
      --   -- You can pass additional configuration to telescope to change theme, layout, etc.
      --   -- require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
      --   --   winblend = 10,
      --   --   previewer = true,
      --   -- }))
      --   require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
      --     -- winblend = 10,
      --     previewer = true,
      --   }))
      -- end, "Search in current buffer")

      map("n", "<space>sf", require("telescope.builtin").find_files, "Files")
      map("n", "<space>sh", require("telescope.builtin").help_tags, "Help")
      map("n", "<space>sw", require("telescope.builtin").grep_string, "Current word")
      map("v", "<space>sw", require("telescope.builtin").grep_string, "Current word")
      map("n", "<space>sg", require("telescope.builtin").live_grep, "Grep")
      map("n", "<space>sd", require("telescope.builtin").diagnostics, "Diagnostics")

      -- vim.keymap.set("n", "<space>en", function()
      --   require('telescope.builtin').find_files {
      --     cwd = vim.fns
      --   }
      -- end)

      -- require "lua.config.telescope.multigrep".setup()
      require "telescope.multigrep".setup()

      map("n", "<C-p>", require("telescope.builtin").keymaps, "Search keymaps")
    end,
  },
}
