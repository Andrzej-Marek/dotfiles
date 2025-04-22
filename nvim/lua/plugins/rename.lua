return {
  "smjonas/inc-rename.nvim",
  config = function()
    require("inc_rename").setup({ presets = { inc_rename = true } })
    vim.keymap.set("n", "<leader>rn", ":IncRename ")
  end,
}
