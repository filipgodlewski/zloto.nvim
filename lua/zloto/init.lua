local palette = require "zloto.palette"
local groups = require "zloto.groups"

local M = {}

M.colors = {}
M.highlights = {}
M.plugins = {}
M.was_set = false

local default_opts = {
   plugins = {
      builtin = true,
      diagnostic = true,
      lsp = true,
      telescope = true,
      treesitter = true,
   },
   colors = {},
   highlights = {},
}

M._setup = function()
   for plugin, highlights in pairs(M.highlights) do
      if M.plugins[plugin] then
         for group, settings in pairs(highlights) do
            vim.api.nvim_set_hl(0, group, settings)
         end
      end
   end
end

M.setup = function(opts)
   opts = vim.tbl_deep_extend("force", {}, default_opts, opts or {})
   M.colors = vim.tbl_deep_extend("force", {}, palette.defaults, opts.colors or {})
   M.highlights = groups.setup(M.colors, opts.highlights)
   M.plugins = vim.tbl_deep_extend("force", {}, M.plugins, opts.plugins or {})
   M.was_set = true
end

M.load = function()
   if not M.was_set then
      vim.notify("zloto.nvim (error): Plugin was not set up correctly!", vim.log.levels.ERROR)
      return
   end
   if vim.g.colors_name then vim.cmd "hi clear" end

   vim.o.termguicolors = true
   vim.g.colors_name = "zloto"
   M._setup()
end

return M
