vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>gr", "<cmd>LspRestart<cr>")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("n", "<C-w>", "<cmd>bdelete!<CR>")
vim.keymap.set("n", "<C-T>", "<cmd>enew<CR>")
vim.keymap.set("n", "<C-tab>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<C-S-tab>", "<cmd>bprevious<CR>")
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<M-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<M-j>", "<cmd>cprev<CR>zz")


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
-- Search for the files with differences to default branch.
vim.keymap.set({'n', 'v'}, '<leader>gf', function()
    require('git_branch').files()
end)
