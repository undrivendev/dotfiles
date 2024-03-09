local M = {}

M.set_keymap = vim.keymap.set

local function _map(mode, shortcut, command)
  M.set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function M.map(shortcut, command)
  _map("", shortcut, command)
end

function M.nmap(shortcut, command)
  _map("n", shortcut, command)
end

function M.imap(shortcut, command)
  _map("i", shortcut, command)
end

function M.vmap(shortcut, command)
  _map("v", shortcut, command)
end

function M.cmap(shortcut, command)
  _map("c", shortcut, command)
end

function M.tmap(shortcut, command)
  _map("t", shortcut, command)
end

return M
