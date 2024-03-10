local M = {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local k = require("../keymaps")

    require("neo-tree").setup()
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    k.nmap("<C-n>", "<cmd>Neotree toggle<CR>")
  end,
}

return M
