require("noice").setup({
  cmdline = {
    enabled = true,        -- enable command line popup
    view = "cmdline_popup", -- floating popup style
  },
  messages = {
    enabled = true,         -- show messages
  },
  routes = {
    {
      filter = { event = "msg_showmode" },
      view = "mini",
    },
  },
  popupmenu = {
    enabled = true,          -- enhance completion menu
  },
})
