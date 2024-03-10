local M = {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local k = require("../keymaps")
    local builtin = require("telescope.builtin")

    k.nmap("<C-p>", builtin.find_files)
    k.nmap("<leader>fg", builtin.live_grep)
  end,
}

return M
