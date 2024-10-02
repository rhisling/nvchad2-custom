-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",

  hl_override = {
    NvDashAscii = {
      fg = "blue",
      bg = "NONE",
    },
    NvDashButtons = {
      fg = "blue",
      bg = "NONE",
    },
    NvDashlazy = {
      fg = "blue",
      bg = "NONE",
    },
    -- For brackets
    ["@punctuation.bracket"] = { fg = "cyan" },
    ["@identifier"] = { fg = "green" },
    ["@module"] = { fg = "white" },
    ["@namespace.cpp"] = { fg = "nord_blue" },
    ["@constant"] = { fg = "yellow" },
    ["@constant.macro"] = { fg = "pink" },
    ["@Statement"] = { fg = "pink" },
    ["@string.regexp"] = { fg = "pink" },
    ["@character"] = { fg = "white" },
    ["@variable.builtin"] = {
      fg = "white",
    },
    ["@operator"] = { fg = "cyan" },
    ["@property"] = { fg = "nord_blue" },

    ["@variable.parameter"] = {
      fg = "white",
    },
    ["@variable.member"] = { fg = "white" },
    ["@variable.member.key"] = { fg = "orange" },
    ["@punctuation.delimiter"] = { fg = "white" },
    -- For the '::' operator (often used for scope resolution or namespace separators)
    ["@punctuation.special"] = { fg = "white" },
    Identifier = { fg = "nord_blue" },
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

M.nvdash = {
  load_on_startup = true,
  header = header,
  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "󰈚  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
    { txt = "  Bookmarks", keys = "Spc m a", cmd = "Telescope marks" },
    { txt = "  Themes", keys = "Spc t h", cmd = "Telescope themes" },
    { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashLazy",
      no_gap = true,
    },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
  },
}

M.ui = {
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
  cmp = {
    icons_left = false, -- only for non-atom styles!
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    format_colors = {
      tailwind = false, -- will work for css lsp too
      icon = "󱓻",
    },
  },

  telescope = { style = "borderless" }, -- borderless / bordered
  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
}

M.mason = {
  cmd = true,
  pkgs = {
    "lua-language-server",
    "stylua", --lua
    "html-lsp",
    "css-lsp",
    "prettier", --html, css
    "clangd",
    "clang-format", --cpp
    "gopls", --go
    "pyright", --python
    "rust-analyzer", --rust
  },
}

M.term = {
  winopts = { number = false, relativenumber = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

M.lsp = { signature = true }

M.cheatsheet = {
  theme = "grid", -- simple/grid
  excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

return M
