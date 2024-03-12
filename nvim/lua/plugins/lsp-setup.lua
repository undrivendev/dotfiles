local M = {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local k = require("../keymaps")
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({})

      k.nmap("K", vim.lsp.buf.hover)
      k.nmap("gd", vim.lsp.buf.definition)
      k.nmap("<leader>ca", vim.lsp.buf.code_action)
    end,
  },
}

return M
