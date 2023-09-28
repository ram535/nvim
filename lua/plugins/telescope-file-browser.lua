return {
   "nvim-telescope/telescope-file-browser.nvim",
   dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
   config = function()
      local fb_actions = require "telescope._extensions.file_browser.actions"
      require("telescope").setup {
         extensions = {
            file_browser = {
               theme = "ivy",
               -- disables netrw and use telescope-file-browser in its place
               hijack_netrw = true,
               initial_mode = 'normal',
               display_stat = false,
               grouped = true,
               hide_parent_dir = true,
               mappings = {
                  ["n"] = {
                     ["n"] = fb_actions.create,
                     ["a"] = fb_actions.rename,
                     ["v"] = fb_actions.move,
                     ["y"] = fb_actions.copy,
                     ["h"] = fb_actions.goto_parent_dir,
                     ["."] = fb_actions.toggle_hidden,
                     ["l"] = require('telescope.actions').select_default,
                  },
               },
            },
         },
      }
      require("telescope").load_extension "file_browser"
   end,
}
