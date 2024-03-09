vim.cmd([[source ~/.vimrc]])

require("lazy-setup").load_plugins()
require("keymaps").load_keymaps()
require("autocommands").load_autocommands()
