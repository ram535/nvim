return {
   "kndndrj/nvim-dbee",
   dependencies = {
      "MunifTanjim/nui.nvim",
   },
   build = function()
      require("dbee").install()
   end,
   config = function()
      require("dbee").setup({
         sources = {
            require("dbee.sources").MemorySource:new({
               {
                  name = "test",
                  type = "sqlite",
                  url = "/home/last/Documents/test.db",
               },
               -- ...
            }),
         },
         -- ...
      })
   end,
}
