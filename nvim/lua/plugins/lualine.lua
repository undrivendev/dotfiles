M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "catppuccin/nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin-mocha",
      },
    })
  end,
}

return M
