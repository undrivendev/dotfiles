local M = {}

M.set_keymap = vim.keymap.set

local function _map(mode, shortcut, command, opts)
  local utils = require("utils")
  local default_opts = { noremap = true, silent = true }
  local final_opts = utils.merge_tables(default_opts, opts or {})
  M.set_keymap(mode, shortcut, command, final_opts)
end

function M.mode_map(mode, shortcut, command, opts)
  _map(mode, shortcut, command, opts)
end

function M.map(shortcut, command, opts)
  _map("", shortcut, command, opts)
end

function M.nmap(shortcut, command, opts)
  _map("n", shortcut, command, opts)
end

function M.imap(shortcut, command, opts)
  _map("i", shortcut, command, opts)
end

function M.vmap(shortcut, command, opts)
  _map("v", shortcut, command, opts)
end

function M.cmap(shortcut, command, opts)
  _map("c", shortcut, command, opts)
end

function M.tmap(shortcut, command, opts)
  _map("t", shortcut, command, opts)
end

return M
