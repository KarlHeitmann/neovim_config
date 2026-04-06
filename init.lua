-- Handle plugins with lazy.nvim
require("core.lazy")

-- General Neovim keymaps
require("core.keymaps")

-- Other options
require("core.options")

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "ruby",
--   callback = function()
--     -- 1. Load the rspec compiler to get the errorformat (parsing rules)
--     vim.cmd("compiler rspec")
--     
--     -- 2. Set the actual command to run (escaping spaces for Neovim)
--     vim.opt_local.makeprg = "bundle\\ exec\\ rspec\\ $*"
--   end,
-- })

vim.filetype.add({
  extension = {
    thor = "ruby",
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  callback = function()
    -- 1. Load the RSpec compiler for error parsing
    vim.cmd("compiler rspec")

    -- 2. Detect if dip.yml exists in the project root
    -- This looks for dip.yml starting from the current file's directory upwards
    local dip_file = vim.fs.root(0, { "dip.yml" })

    local rspec_cmd = ""
    if dip_file then
      rspec_cmd = "dip\\ rspec"
    else
      rspec_cmd = "bundle\\ exec\\ rspec"
    end

    -- 3. Set makeprg to the detected command
    vim.opt_local.makeprg = rspec_cmd .. "\\ $*"
  end,
})

-- -- In visual mode, this will send the selected range to the LSP formatter
-- vim.keymap.set('v', '<leader>fs', function()
--   vim.lsp.buf.format({ range = true })
-- end, { desc = "LSP: Format Selection" })
--
-- vim.keymap.set({ "n", "v" }, "<leader>fs", function()
--   require("conform").format({
--     async = true,
--     lsp_fallback = true,
--   })
-- end, { desc = "Format selection or full document" })
