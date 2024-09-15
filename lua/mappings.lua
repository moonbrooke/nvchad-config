require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

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
