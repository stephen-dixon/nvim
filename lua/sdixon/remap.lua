vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.g.maplocalleader = " "

-- centre view when scrolling half-pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- move lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- centre view when searcing
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over selection without overwriting vim clipboard buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- modify all instances of current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- add executable permission to current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- execute current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- display LSP diagnostic in floating window (when text runs beyond line-end, or multiple exist for single-line)
vim.api.nvim_set_keymap(
  "n", "<Leader>d", ":lua vim.diagnostic.open_float()<CR>", 
  { noremap = true, silent = true }
)

-- display quickfixes for lsp [fix available] diagnostics
 vim.keymap.set('n', '<leader>qf', ":lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })
