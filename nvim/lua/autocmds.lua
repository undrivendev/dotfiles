local M = {}
function M.load_autocmds()
  -- https://neovim.io/doc/user/lua-guide.html#lua-guide-autocommand-create

  -- Automatically highlight yanked text
  -- https://neovim.io/doc/user/lua.html#vim.highlight
  vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
      vim.highlight.on_yank()
    end,
    desc = "Briefly highlight yanked text",
  })
end

return M
