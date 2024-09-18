return {

    "echasnovski/mini.nvim",
    version = false,
    config = function(_, opts)
      require("mini.align").setup({})
      require("mini.animate").setup({})
      require("mini.comment").setup({})
      require("mini.diff").setup({})
      -- require("mini.extra").setup({})
      require("mini.files").setup()
      require("mini.fuzzy").setup({})
      require("mini.icons").setup({})
      require("mini.indentscope").setup({})
      require("mini.move").setup({})
      -- require("mini.notify").setup({})
      -- require("mini.pick").setup({})
      require("mini.sessions").setup({
        directory = "~/.config/nvim/sessions",
      })
      require("mini.starter").setup({})
      require("mini.surround").setup({})
    end,
  }


