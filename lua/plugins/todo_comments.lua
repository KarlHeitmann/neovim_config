return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      keywords = {
        NOTE = { icon = " ", color = "hint", alt = { "INFO", "TARGET" } },
      }
    },
    -- config = function()
    --   -- NOTE: ]t and [t are already mapped on unimpaired for :tnext and :tprevious.
    --   -- See: :help tnext for more information, it is related to tags.
    --   local map = require("helpers.keys").map
    --
    --   -- map("n", "<leader>fr", require("telescope.builtin").oldfiles, "Recently opened")
    --   map("n", "]tt", require("todo-comments").jump_next, "Jump to next todo comment")
    --   map("n", "[tt", require("todo-comments").jump_prev, "Jump to previous todo comment")
    --   -- vim.keymap.set("n", "]t", function()
    --   --   require("todo-comments").jump_next()
    --   -- end, { desc = "Next todo comment" })
    --   --
    --   -- vim.keymap.set("n", "[t", function()
    --   --   require("todo-comments").jump_prev()
    --   -- end, { desc = "Previous todo comment" })
    --   --
    --   -- -- You can also specify a list of valid jump keywords
    --   --
    --   -- vim.keymap.set("n", "]t", function()
    --   --   require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
    --   -- end, { desc = "Next error/warning todo comment" })
    -- end,
  }
}
