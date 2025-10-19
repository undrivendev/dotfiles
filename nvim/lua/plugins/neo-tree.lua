local M = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {},
  keys = {
    { "<leader>n", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
  },
}

return M
