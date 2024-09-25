-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "clangd",
        "bashls",
        "gopls",
        -- "pylsp",
        "tsserver",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        -- "stylua",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        -- "python",
        "bash",
        "cppdbg",
        "go",
        -- add more arguments for adding more debuggers
      },
      handlers = {
        -- go = function()
        --   local dap = require "dap"
        --   dap.adapters.delve = {
        --         type = "server",
        --         port = "${port}",
        --         executable = {
        --             command = "/usr/bin/kitty",
        --             args = { "dlv","dap", "-l", "127.0.0.1:${port}" },
        --           },
        --   }
        --   end,
        -- },
        --   codelldb = function()
        --     local dap = require "dap"
        --     local codelldb = require "mason-nvim-dap.mappings.adapters.codelldb"
        --     dap.adapters.codelldb = {
        --       type = "server",
        --       port = "${port}",
        --       executable = {
        --         command = codelldb,
        --         args = { "--port", "${port}" },
        --       },
        --     }
        --   end,
        --   c = function()
        --     local dap = require "dap"
        --     dap.configurations.c = {
        --       {
        --         name = "Debug with codelldb",
        --         type = "codelldb",
        --         request = "launch",
        --         program = function()
        --           return vim.fn.input {
        --             prompt = "Path to executable: ",
        --             default = vim.fn.getcwd() .. "/",
        --             completion = "file",
        --           }
        --         end,
        --         cwd = "${workspaceFolder}",
        --         stopOnEntry = false,
        --       },
        --     }
        --   end,
      },
    },
  },
}
