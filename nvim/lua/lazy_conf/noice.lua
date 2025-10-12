return {
  -- other plugins ...
  "folke/noice.nvim",
  event = "VeryLazy",  -- load it lazily
  dependencies = {
    "MunifTanjim/nui.nvim",  -- required by Noice
    "rcarriga/nvim-notify",  -- optional, for fancy notifications
  }
}

