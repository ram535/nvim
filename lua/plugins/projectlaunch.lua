return {
   "sheodox/projectlaunch.nvim",
   config = function()
      require("projectlaunch").setup()
      -- open the main menu
      vim.api.nvim_set_keymap('n', "<leader>ll", "<cmd>lua require('projectlaunch').toggle_main_menu()<cr>",
         { noremap = true, silent = true })
   end,
}
