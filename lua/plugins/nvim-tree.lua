return {
  "nvim-tree/nvim-tree.lua",
  tag = "compat-nvim-0.9",

  config = function()

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
      desc = "Toggle Explorer",
    })

    require("nvim-tree").setup()

  end,
}
