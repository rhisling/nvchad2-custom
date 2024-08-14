require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Key mappings for cut, copy, paste
map("n", "<leader>x", '"+d', { noremap = true, desc = "Cut (delete to clipboard)" })
map("v", "<leader>x", '"+d', { noremap = true, desc = "Cut (delete to clipboard)" })
map("n", "<leader>y", '"+y', { noremap = true, desc = "Copy to clipboard" })
map("v", "<leader>y", '"+y', { noremap = true, desc = "Copy to clipboard" })
map("n", "<leader>p", '"+p', { noremap = true, desc = "Paste from clipboard" })
map("v", "<leader>p", '"+p', { noremap = true, desc = "Paste from clipboard" })

-- Moving multiple lines
map("n", "<A-j>", ":m .+1<CR>==", { noremap = true, desc = "Move current line down" })
map("n", "<A-k>", ":m .-2<CR>==", { noremap = true, desc = "Move current line up" })
map(
  "i",
  "<A-j>",
  "<Esc>:m .+1<CR>==gi",
  { noremap = true, desc = "Move current line down (insert mode)" }
)
map(
  "i",
  "<A-k>",
  "<Esc>:m .-2<CR>==gi",
  { noremap = true, desc = "Move current line up (insert mode)" }
)

-- Additional useful mappings
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, desc = "Save file" })
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true, desc = "Quit" })
vim.api.nvim_set_keymap(
  "n",
  "<leader>h",
  ":nohl<CR>",
  { noremap = true, desc = "Clear search highlighting" }
)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "v", "i", "t" }, "<C-b>", function()
  require("nvchad.term").runner {
    id = "RunAndBuildTerminal",
    pos = "sp",
    cmd = function()
      local file = vim.fn.expand "%" --returns absolute path
      local sfile = vim.fn.expand "%:r" -- returns absolute path without extension
      local rfile = vim.fn.expand "%:~:." -- returns relative path
      local rsfile = vim.fn.expand "%:~:.:r" -- returns relative path without extension
      local ft_cmds = {
        sh = "bash " .. file,
        rust = "cargo " .. file,
        python = "python3 " .. file,
        javascript = "node " .. file,
        go = "go build && go run " .. file,
        c = "g++ " .. file .. " -o " .. sfile .. " && ./" .. sfile,
        cpp = "clear && g++ -std=c++20 ./" .. rfile .. " -o " .. sfile .. " && ./" .. rsfile,
        typescript = "deno compile " .. file .. " && deno run " .. file,
      }
      return ft_cmds[vim.bo.ft]
    end,
  }
end, { desc = "Build and Run file" })
