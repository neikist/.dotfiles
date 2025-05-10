require("style")
require("other")
require("config.lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	-- check plugin updates --
	checker = { enabled = true },
})

require("lsp")
