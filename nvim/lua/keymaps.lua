M = {}

M.load_keymaps = function()
	-- Keymaps
	vim.cmd([[
nnoremap <leader>t :Neotree toggle<cr>
nnoremap <leader><leader>w :HopWord<cr>
]])
end

return M
