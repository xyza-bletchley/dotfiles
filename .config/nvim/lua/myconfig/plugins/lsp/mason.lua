return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "ansiblels",
        "bashls",
        "clangd",
        "dockerls",
        "lua_ls",
        "perlnavigator",
        "powershell_es",
        "pyright",
        "terraformls",
        "yamlls",
      },
    })
    mason_tool_installer.setup({
      ensure_installed = {
        "shellharden",  -- bash formatter
        "clang-format", -- C++ formatter
        "prettier",     -- prettier formatter
        "isort",        -- python formatter
        "black",        -- python formatter
        "yamlfmt",      -- YAML formatter
      },
    })
  end,
}
