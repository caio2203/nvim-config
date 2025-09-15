require("telescope").setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "truncate" },
    file_ignore_patterns = {
      "node_modules",
      ".git/",
    },
  },
})
