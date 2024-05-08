return {
	"mistricky/codesnap.nvim",
	event = "VeryLazy",
	build = "make build_generator",
	keys = {
		{ "<leader>cc", "<cmd>CodeSnap<CR>", mode = "x", desc = "Save selected code snapshot into clipboard" },
		{ "<leader>cs", "<cmd>CodeSnapSave<CR>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
	},
	opts = {
		save_path = "~/Pictures",
		has_breadcrumbs = true,
		bg_color = "#313438",
		watermark = "ryan.bamba",
	},
}
