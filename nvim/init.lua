vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.cmd([[
source ~/.vimrc
]])

-- Lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- plugins
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
require("lazy").setup({
  {
	  "folke/which-key.nvim",
	  config = function()
		  vim.o.timeout = true
		  vim.o.timeoutlen = 300
                  require("which-key").setup({})
	  end,
  },
  {
	  "nvim-neo-tree/neo-tree.nvim",
	  version = "*",
	  dependencies = {
		  "nvim-lua/plenary.nvim",
		  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		  "MunifTanjim/nui.nvim",
	  },
	  config = function ()
		  require('neo-tree').setup()
	  end,
  },
  {
	  "phaazon/hop.nvim",
	  config = function ()
		  require('hop').setup()
	  end,
  },
})

-- Keymaps
vim.cmd([[
nnoremap <leader>t :Neotree toggle<cr>
nnoremap <leader><leader>w :HopWord<cr>
]])
