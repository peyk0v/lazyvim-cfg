return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules/*",
          ".git/*",
          --"path/to/ignore/*",
        },
      },
    })
  end,
  requires = { { "nvim-lua/plenary.nvim" } },
}
