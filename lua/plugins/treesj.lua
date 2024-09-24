return {
  'Wansmer/treesj',
  keys = {
    '<leader>m',
    '<CMD>TSJToggle<CR>',
    desc="Toggle Treesitter Join",
  },
  config = function()
    require('treesj').setup({--[[ your config ]]})
  end,
  opts = { use_default_keys = false }
}
