return {
  "alexghergh/nvim-tmux-navigation",
  keys = {
    { "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>", desc = "Navigate to left pannel" },
    { "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>", desc = "Navigate to down pannel" },
    { "<C-k>", "<cmd>NvimTmuxNavigateUp<CR>", desc = "Navigate to up pannel" },
    { "<C-l>", "<cmd>NvimTmuxNavigateRight<CR>", desc = "Navigate to right pannel" },
  },
  config = function()
    require("nvim-tmux-navigation").setup({})
  end,
}
