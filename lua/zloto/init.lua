local M = {}

local default_opts = {
   palette = {},
   groups = {},
}

local can_be_rgbs = {
   "fg",
   "bg",
   "sp",
   "special",
}

local parse_settings = function(settings, palette)
   for setting, value in pairs(settings) do
      if vim.tbl_contains(can_be_rgbs, setting) and value:sub(1, 1) ~= "#" then
         local keys = {}
         for word in value:gmatch "([^.]+)" do
            table.insert(keys, word)
         end
         settings[setting] = vim.tbl_get(palette, unpack(keys))
      end
   end
   return settings
end

M.load = function(opts)
   for group, settings in pairs(opts.groups) do
      settings = parse_settings(settings, opts.palette)
      vim.api.nvim_set_hl(0, group, settings)
   end
end

M.setup = function(opts)
   opts = vim.tbl_deep_extend("force", default_opts, opts or {})
   opts["palette"] = require("zloto.palette").setup(opts.palette)
   opts["groups"] = require("zloto.groups").setup(opts.groups)
   M.load(opts)
end

return M
