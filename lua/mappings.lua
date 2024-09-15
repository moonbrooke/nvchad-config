require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Ctrl-S for save file
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Ctrl+C for copying to system clipboard
map({ "n", "v" }, "<C-c>", '"+y', { desc = "Copy to system clipboard" })

-- Ctrl+V for pasting from system clipboard
map({ "n", "i" }, "<C-v>", '"+p', { desc = "Paste from system clipboard" })
map("c", "<C-v>", "<C-r>+", { desc = "Paste in command mode" })

-- Nvimtree Toggle
map("n", "\\", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- Move block of codes up/down
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move code up" })
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move code down" })

-- Format code with LSP
map("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
    vim.cmd("write")
end, { desc = "Format code and save file" })

-- Dismiss nvim-notify notifications
vim.keymap.set("n", "<leader>d", function()
    require("notify").dismiss({ silent = true, pending = true })
end, { desc = "Dismiss nvim-notify notifications" })
