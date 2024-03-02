vim.cmd([[source ~/.vimrc]])

require("plugins").load_plugins()
require("keymaps").load_keymaps()
require("autocommands").load_autocommands()
