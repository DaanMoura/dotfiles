-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
local status, _ = pcall(vim.cmd, "colorscheme primer_dark")
if not status then
	print("Colorscheme not found!")
	return
end
