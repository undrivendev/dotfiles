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

      -- Setup language servers.
      lspconfig.lua_ls.setup({})

      -- Global mappings.
      -- See `:help vim.diagnostic.*` for documentation on any of the below functions
      vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
      vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

      -- Use LspAttach autocommand to only map the following keys
      -- after the language server attaches to the current buffer
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          -- Enable completion triggered by <c-x><c-o>
          vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local opts = { buffer = ev.buf }
          k.nmap("K", vim.lsp.buf.hover, opts)
          k.nmap("<C-k>", vim.lsp.buf.signature_help, opts)
          k.nmap("gD", vim.lsp.buf.declaration, opts)
          k.nmap("gd", vim.lsp.buf.definition, opts)
          k.nmap("<leader>D", vim.lsp.buf.type_definition, opts)
          k.nmap("gi", vim.lsp.buf.implementation, opts)
          k.mode_map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
          k.nmap("<leader>f", function()
            vim.lsp.buf.format({ async = true })
          end, opts)
        end,
      })
    end,
  },
}

return M
