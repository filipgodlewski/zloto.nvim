local M = {}

M.setup = function(opts)
   return vim.tbl_deep_extend(
      "force",
      require "zloto.groups.builtins.builtin",
      require "zloto.groups.builtins.diagnostic",
      require "zloto.groups.builtins.lsp",
      require "zloto.groups.plugins.treesitter",
      opts
   )
end

return M
