return {
  "mistweaverco/kulala.nvim",
  ft = "http",
  keys = {
    { "<leader>E",  "",                                             desc = "+Rest" },
    { "<leader>e",  "<cmd>lua require('kulala').run()<cr>",         desc = "Send the request" },
    { "<leader>Rt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle headers/body" },
    { "<leader>Rp", "<cmd>lua require('kulala').jump_prev()<cr>",   desc = "Jump to previous request" },
    { "<leader>Rn", "<cmd>lua require('kulala').jump_next()<cr>",   desc = "Jump to next request" },
  },
  opts = {},
}
