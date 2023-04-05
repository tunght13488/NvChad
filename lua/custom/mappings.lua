local M = {}

M.rocco = {
  n = {
    [";"] = { ":", "quick command mode", opts = { nowait = true }}
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true }}
  },

  v = {

  }
}

return M
