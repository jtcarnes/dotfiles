return {
  -- Zoxide fuzzy finder
  {
    "telescope.nvim",
    dependencies = {
      "jvgrootveld/telescope-zoxide",
      config = function()
        require("telescope").load_extension("zoxide")
      end,
    },
  },
}
