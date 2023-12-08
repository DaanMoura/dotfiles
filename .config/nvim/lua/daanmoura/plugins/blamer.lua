local status, _ = pcall(require, "packer")
if not status then
	return
end

-- vim.cmd([[
--   let g:blamer_relative_time = 1
-- ]])

vim.g.blamer_enabled = true
vim.g.blamer_relative_time = 1
