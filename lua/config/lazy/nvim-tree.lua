return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
	  require("nvim-tree").setup {
		  view = {
			  width = 30,
			  side = "left",
		  },
		  renderer = {
			  highlight_opened_files = "none",
			  group_empty = true,
			  icons = {
				  show = {
					  git = true,
					  folder = true,
					  file = true,
					  folder_arrow = true,
				  },
			  },
		  },
		  actions = {
			  open_file = {
				  quit_on_open = true,
			  },
		  },
	  }
  end,
}
