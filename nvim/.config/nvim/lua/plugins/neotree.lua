return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set("n", "<leader>t", ":Neotree toggle position=right<CR>", {})
    vim.keymap.set("n", "<C-l>", "<C-w>l", {})
    vim.keymap.set("n", "<C-h>", "<C-w>h", {})
  end,
}
