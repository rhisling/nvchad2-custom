-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",

  hl_override = {
    NvDashAscii = {
      fg = "blue",
      bg = "black",
    },
    NvDashButtons = {
      fg = "white",
      bg = "none",
    },
  },
  transparency = true,
}

local asciiArt = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⢫⣈⣭⣤⣈⠙⠿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡀⠤⠤⠄⠲⣡⠊⠀⠀⢇⢆⠀⠀⠈⠙⢦⢠⣉⠲⢄⠀⠀⠀⠀⠀⠀⠀⢐⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⢴⡪⠔⠒⠂⡹⣦⢃⠀⠀⠀⠈⠑⠻⠤⣀⡀⠀⠘⡧⠉⠈⠁⠀⠀⠀⠀⠀⠀⠈⡎⣳⢄⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⡔⡾⠛⠁⠀⠀⠀⠀⢇⡏⡟⣆⠀⠀⠀⠀⠀⠀⠘⡻⡀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠞⣿⠛⠪⣱⡀⠀⠀⠀⠀⠀
⠀⠀⣜⡞⠀⠀⠀⠀⠀⠀⠀⣸⡆⢸⡸⡄⠀⠀⠀⠀⠀⠀⡇⠡⠀⠀⡇⠀⠀⠀⠀⠀⠀⢀⣾⢃⢀⠇⢰⠀⠈⠻⣦⡀⠀⠀⠀
⢀⣼⠏⠀⠀⢀⣀⣀⠀⠀⠨⣻⠀⠀⠑⠺⣽⣢⣄⡀⠀⠀⡇⠀⢠⠀⢸⠀⠀⠀⠀⢀⡠⢪⠏⡆⢸⠀⠸⡄⠀⠀⠈⠳⣷⠀⠀
⡜⣞⢀⡴⠊⠁⠀⠀⠑⢄⢀⣯⠀⠀⠀⠸⣿⢃⣿⣿⣒⢢⡇⠀⠀⢣⡀⡤⠀⣲⣾⣽⢾⡿⡸⠀⢸⠀⠀⠇⠀⠀⠀⠀⢹⡇⠀
⡇⣿⠎⠀⠀⠀⠀⠀⠀⠀⢻⢆⡠⠒⠋⣑⠶⠧⠛⠛⠉⠙⠆⠀⠀⠀⠁⠙⠒⠯⠿⠧⢼⡧⢁⠀⣸⠀⡴⠋⣳⢄⡀⠀⡀⣿⠀
⢱⡏⠀⠀⠀⠀⠀⠀⠀⠀⠈⠚⢀⡠⠞⢁⠞⠉⠹⣽⢈⠅⢐⠤⠄⠂⠤⡀⢠⣶⠊⠑⢄⠑⢄⣡⣇⡞⠀⠀⡇⡜⢻⠢⢁⡯⠀
⠀⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⣽⠆⣠⡈⡇⢀⡜⠁⢠⠊⠁⠀⠀⠀⠀⠈⠺⣧⠀⠀⡸⢀⠀⣌⣛⡄⠀⢠⣗⣷⡙⡆⢿⡇⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⣣⠎⠀⡰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠹⡄⠀⠑⠛⠷⠎⠉⠁⢀⣿⡆⠟⡽⢧⢸⡽⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠤⢄⣀⣠⠞⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⡀⠀⠀⠀⠀⠀⠀⠈⡧⠙⠀⢙⣩⠎⠁⠀
⠀⠀⠀⠀⠀⠀⢀⡔⠉⠴⠦⠤⠤⡶⠁⡄⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠁⠣⡀⠀⠀⠀⠀⠀⠳⣤⡾⠞⠉⠀⠀⠀
⠀⠀⠀⠀⠀⢠⠊⠀⠀⠀⠀⠀⢠⠁⠠⠂⢀⠔⢀⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⠎⠀⠀⠀⠈⣦⢀⣀⡠⢤⣾⠟⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠱⣀⣀⣀⣀⠀⠠⡎⠘⠀⠰⢁⠴⠁⣀⣀⠀⠀⠀⣀⡀⠠⠾⣥⣀⠠⡀⠰⠤⢾⠤⣔⡺⠕⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠙⠦⣀⠀⣀⣠⢣⡀⠀⠀⡧⠤⠤⠐⠒⠒⠉⠉⠉⠑⠒⠢⠤⠬⡆⠠⠤⠤⠺⡍⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡗⣰⢟⣴⢳⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠐⠋⢿⠭⣿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠋⠉⠙⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]

-- Creating the header table with the ASCII art
local header = {}

-- Split the ASCII art into lines
for line in asciiArt:gmatch "[^\r\n]+" do
  table.insert(header, line)
end

local utils = require "nvchad.stl.utils"
local sep_style = "round"
local sep_icons = utils.separators
local separators = sep_icons[sep_style]
local sep_r = separators["right"]
M.ui = {
  nvdash = {
    load_on_startup = true,
    header = header,
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
  statusline = {
    theme = "default",
    separator_style = sep_style,
    modules = {
      mode = function()
        if not utils.is_activewin() then
          return ""
        end
        local modes = utils.modes
        local m = vim.api.nvim_get_mode().mode
        local current_mode = "%#St_" .. modes[m][2] .. "Mode# " .. modes[m][1]
        local mode_sep1 = "%#St_" .. modes[m][2] .. "ModeSep#" .. sep_r
        return current_mode .. mode_sep1 .. "%#ST_EmptySpace#" .. sep_r
      end,
    },
  },
}

return M
