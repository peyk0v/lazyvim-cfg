-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- show " " in json files
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- fix canallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

vim.api.nvim_create_autocmd("Filetype", {
  pattern = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "html",
    "css",
    "lua",
    "astro",
    "json",
  },
  command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2",
  -- callback = function()
  --   vim.opt.tabstop = 2
  --   vim.opt.shiftwidth = 2
  --   vim.opt.softtabstop = 2
  -- end,
})
