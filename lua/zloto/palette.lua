local M = {}

M.default = {
   background = "#0D1117",
   foreground = "#E3E4E5",
   accent = "#DDB279",
   dim = {
      black = "#363A41",
      red = "#2C1C21",
      green = "#1E2C1C",
      yellow = "#453A2C",
      blue = "#222A36",
      magenta = "#3D2F4A",
      cyan = "#2F3D49",
      white = "#BCB6AF",
   },
   normal = {
      black = "#0D1117",
      red = "#525357",
      green = "#686A6E",
      yellow = "#8A8D91",
      blue = "#A5A7AB",
      magenta = "#BCBDC1",
      cyan = "#D0D1D4",
      white = "#E3E4E5",
   },
   bright = {
      black = "#575D66",
      red = "#BB5E68",
      green = "#5E8C60",
      yellow = "#B9915D",
      blue = "#5473A9",
      magenta = "#875F8D",
      cyan = "#54939A",
      white = "#FFFFFF",
   },
}

M.setup = function(opts) return vim.tbl_deep_extend("force", M.default, opts) end

return M
