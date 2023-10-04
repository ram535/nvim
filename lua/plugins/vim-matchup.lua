return {
   "andymass/vim-matchup",
   config = function()
      require 'nvim-treesitter.configs'.setup({
         matchup = {
            enable = true,        -- mandatory, false will disable the whole extension
            disable = { "ruby" }, -- optional, list of language that will be disabled
            -- [options]
            include_match_words = true,
         },
      })
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
   end,
}
