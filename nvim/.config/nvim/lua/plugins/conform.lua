return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        python = { "isort", "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        lua = { "stylua" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })

    vim.keymap.set("n", "<leader>gf", function()
      require("conform").format()
    end, {})
  end,
}
