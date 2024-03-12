vim.cmd([[source ~/.vimrc]])

require("lazy-setup").load_plugins()
require("autocmds").load_autocmds()
