local status, mason = pcall(require, "mason")
if not status then
	return
end
local status2 = pcall(require, "mason-lspconfig")
if not status2 then
	return
end

mason.setup({})
