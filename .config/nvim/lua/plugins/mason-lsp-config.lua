return {
	
  {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup({
          ui = {
              icons = {
                  package_installed = "✓",
                  package_pending = "➜",
                  package_uninstalled = "✗"
              }
          }
      })
      end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "nil_ls" }
      })
      require("mason-lspconfig").setup_handlers({
        -- function(server_name)
        --   require("lspconfig")[server_name].setup({})
        -- end,
        function(lua_ls)
          require(lspconfig).lua_ls.setup({
            on_init = function(client)
              local path = client.workspace_folders[1].name
              if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
                return
              end

              client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                runtime = {
                  -- Tell the language server which version of Lua you're using
                  -- (most likely LuaJIT in the case of Neovim)
                  version = 'LuaJIT'
                },
                -- Make the server aware of Neovim runtime files
                workspace = {
                  checkThirdParty = false,
                  library = {
                    vim.env.VIMRUNTIME
                    -- Depending on the usage, you might want to add additional paths here.
                    -- "${3rd}/luv/library"
                    -- "${3rd}/busted/library",
                  }
                  -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                  -- library = vim.api.nvim_get_runtime_file("", true)
                }
              })
            end,
            settings = {
              Lua = {}
            }
          })
        end,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      -- KEYMAPPS --
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- Display info about hovered symbol
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- Go to Definition
      vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },

  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      -- This is your opts table
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
	
}
