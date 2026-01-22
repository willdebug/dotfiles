require("config.lazy")
vim.schedule(function()
	vim.diagnostic.config({ virtual_text = true })
end)
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.bo.softtabstop = 2
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "orange" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "white" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "orange" })
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
