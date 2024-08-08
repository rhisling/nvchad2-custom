local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    go = { "goimports", "gofmt" },

    c = { "clang_format" },

    cpp = { "clang_format" },
    -- Use a sub-list to run only the first available formatter
    javascript = { "prettierd", "prettier", stop_after_first = true },
    -- You can use a function here to determine the formatters dynamically
    python = function(bufnr)
      if require("conform").get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,

    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format = {
    timeout_ms = 3000,
    async = false, -- not recommended to change
    quiet = false, -- not recommended to change
  },

  formatters = {
    stylua = {
      prepend_args = { "--column-width", "100", "--indent-type", "Spaces" },
    },
    clang_format = {
      prepend_args = {
        "--style",
        "{BasedOnStyle: Google, Standard: c++17, IndentWidth: 4}",
        -- "{BasedOnStyle: Google, Standard: c++17, ColumnLimit: 100, IndentWidth: 4}",
      },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
  -- If this is set, Conform will run the formatter asynchronously after save.
  -- It will pass the table to conform.format().
  -- This can also be a function that returns the table.
  format_after_save = {
    lsp_fallback = true,
  },
}

require("conform").setup(options)
