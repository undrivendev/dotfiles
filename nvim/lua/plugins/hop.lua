M = {
  "smoka7/hop.nvim",
  version = "*",
  opts = {},
  config = function()
    local k = require("../keymaps")

    k.map("s", "<cmd>HopChar1<CR>")
  end,
}

return M
