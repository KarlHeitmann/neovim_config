local conf = require("telescope.config").values
local finders = require "telescope.finders"
local make_entry = require "telescope.make_entry"
local pickers = require "telescope.pickers"
local previewers = require "telescope.previewers"
local putils = require "telescope.previewers.utils"
local utils = require('telescope.utils')

local M = {}

local rails_routes = function(opts)
  print("::: Rails Routes command :::")
  -- require("telescope").extensions.rails_routes.rails_routes()
  --
  -- local sample_results = utils.get_os_command_output("dip rails routes")
  -- local rails_results = utils.get_os_command_output("dip rails routes")
  -- local cmd = {"dip", "rails", "routes", "/Users/karl/laburo/signinsolutions/guest-server"}
  local cmd = {"dip", "rails", "routes"}
  -- use finders.new_oneshot_job(git_cmd, opts)
  local rails_results = utils.get_os_command_output(cmd, "/Users/karl/laburo/signinsolutions/guest-server", 10000)

  print("RAILS ROUTES")
  print(rails_results)

  -- local get_route_preview = function(opts)
  --   return previewers.new_buffer_previewer {
  --     title = "Rails route data"
  --   }
  -- end
  --
  opts = opts or {}
  local sample_results = { "apple", "bananas" }
  pickers.new(opts, {
    prompt_title = "Rails Routes",
    finder = finders.new_table {
      -- results = require("telescope._extensions.rails_routes").get_routes(),
      -- results = "ASD",
      -- results = sample_results,
      results = rails_results,

      entry_maker = make_entry.gen_from_file(opts),
    },
    previewer = previewers.cat.new(opts),
    sorter = conf.generic_sorter(opts),
    -- attach_mappings = function(prompt_bufnr, map)
    --   utils.select_prompt(prompt_bufnr, map)
    --   return true
    -- end
  }):find()
  -- })
  print("END")
end

M.setup = function(opts)
  -- print(">>>> Rails Routes <<<<")
  vim.keymap.set("n", "<space>sr", rails_routes)
  -- print(">>>> Rails Routes 1 <<<<")
  require("telescope").register_extension {
    exports = {
      rails_routes = rails_routes
    },
  }
end

return M
