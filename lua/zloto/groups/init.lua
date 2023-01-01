local M = {}

M.setup = function(opts)
   return vim.tbl_deep_extend(
      "force",
      require "zloto.groups.syntax",
      opts,
   )
end

return M
