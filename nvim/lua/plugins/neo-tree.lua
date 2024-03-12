local M = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local k = require("../keymaps")
    require("neo-tree").setup()
    k.nmap("<C-n>", "<cmd>Neotree toggle<CR>")
  end,
}

return M
