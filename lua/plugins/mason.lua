return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-nvim-dap.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    })

    -- mason_lspconfig.setup({
      -- list of servers for mason to install
      -- ensure_installed = {
      --   "tsserver",
      --   "html",
      --   "cssls",
      --   "tailwindcss",
      --   "svelte",
      --   "lua_ls",
      --   "graphql",
      --   "emmet_ls",
      --   "prismals",
      --   "pyright"
      -- },
      -- auto-install configured servers (with lspconfig)
      -- automatic_installation = true, -- not the same as ensure_installed
    -- })
    require("mason-nvim-dap").setup()
  end,
}