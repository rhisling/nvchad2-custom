require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n", "v", "i", "t" }, "<C-b>", function()
  require("nvchad.term").runner {
    id = "RunAndBuildTerminal",
    pos = "float",
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
