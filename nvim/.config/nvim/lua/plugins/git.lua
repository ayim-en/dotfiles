return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        current_line_blame = false,
        signs = {
          add = { text = "▎" },
          change = { text = "▎" },
          delete = { text = "" },
          topdelete = { text = "" },
          changedelete = { text = "▎" },
        },
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          vim.keymap.set("n", "<leader>gp", gs.preview_hunk, { buffer = bufnr })
          vim.keymap.set("n", "<leader>gb", gs.blame_line, { buffer = bufnr })
          vim.keymap.set("n", "<leader>gs", gs.stage_hunk, { buffer = bufnr })
          vim.keymap.set("n", "<leader>gr", gs.reset_hunk, { buffer = bufnr })
          vim.keymap.set("n", "]c", gs.next_hunk, { buffer = bufnr })
          vim.keymap.set("n", "[c", gs.prev_hunk, { buffer = bufnr })
        end,
      })
    end,
  },
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>gg", ":Git<CR>", {})
      vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", {})
      vim.keymap.set("n", "<leader>gP", ":Git push<CR>", {})
      vim.keymap.set("n", "<leader>gl", ":Git log<CR>", {})
      vim.keymap.set("n", "<leader>gd", ":Git diff<CR>", {})
    end,
  },
}
