local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
	},
	ensure_installed = {
		"json",
		"css",
		"html",
		"lua",
		"javascript",
		"typescript",
		"tsx",
		"bash",
		"markdown",
		"yaml",
	},
})
