--move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line DOWN" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line UP" })

-- increment/decrement
vim.keymap.set({ mode = "n", "v" }, "+", "<C-a>")
vim.keymap.set({ mode = "n", "v" }, "-", "<C-x>")

--cursor stays when appending lines from below
vim.keymap.set("n", "J", "mzJ`z", { desc = "Cursor stays when appending lines" })

--when pasting over, clipboard stays the same
--vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Copy to clipboard" })
--vim.keymap.set("n", "<leader>p", '"0p', { desc = "Copy to clipboard" })

--lets you edit current word by grep
vim.keymap.set(
  "n",
  "<leader>rs",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Edit current word" }
)

--lets you edit words but asking for each one
vim.keymap.set(
  "n",
  "<leader>ra",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]],
  { desc = "Edit current word asking" }
)

-- put cursor at the middle of screen when moving in the code
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, desc = "Move cursor up" })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, desc = "Move cursor down" })

-- put cursor at the middle of screen when finding a pattern
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true, desc = "Find pattern and put cursor at middle" })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true, desc = "Find pattern and put cursor at middle" })

-- autoformat
vim.keymap.set("n", "<leader>fm", [[mzgg=G`z]], { desc = "Format all file" })

-- don't yank with x
vim.keymap.set("n", "x", '"_x', { desc = "Delete character without yank" })
vim.keymap.set("n", "X", '"_X', { desc = "Delete character without yank" })

-- vertical & horizontal window
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "Split vertically" })
vim.keymap.set("n", "<leader>h", ":split<CR>", { desc = "Split vertically" })
