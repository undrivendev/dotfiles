local M = {
  "ggandor/leap.nvim",
  version = "*",
  opts = {},
  config = function()
    local k = require("../keymaps")

    k.nmap("s", function()
      require("leap").leap({ target_windows = { vim.api.nvim_get_current_win() } })
    end)
  end,
}

return M
