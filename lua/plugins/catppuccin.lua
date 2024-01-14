return {
  { "catppuccin/nvim", lazy = false, priority = 1000 },
  config = function()
    require("catppuccin").setup({
      style = "macchiato", -- latte, frappe, macchiato, mocha
    })
    vim.cmd.colorscheme("catppuccin")
  end,
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
