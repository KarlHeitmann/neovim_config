return {
  -- "matthiasweiss/angular-quickswitch.nvim",
  -- -- event = "VeryLazy",
  -- config = function()
  --   require("angular-quickswitch").setup()
  --   -- vim.keymap.set("n", "<leader>qs", ":NgQuickSwitchToggle<cr>")
  --   local map = require("helpers.keys").map
  --
  --   map("n", "<leader>qs", ":NgQuickSwitchToggle<cr>")
  --
  -- end
  { "matthiasweiss/angular-quickswitch.nvim", opts = { use_default_keymaps = true } }
}
