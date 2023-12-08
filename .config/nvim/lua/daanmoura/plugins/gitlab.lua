local status, gitlab = pcall(require, "gitlab")
if not status then
	return
end

gitlab.setup({
	code_suggestions = {
		offset_encoding = "utf-16",
	},
})
