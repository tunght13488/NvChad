local plugins = {

  {
    "lambdalisue/suda.vim",
    lazy = false,
    config = function ()
      vim.g.suda_smart_edit = 1
    end
  },

  {
    "michaeljsmith/vim-indent-object",
    lazy = false,
  },

  {
    "aserowy/tmux.nvim",
    lazy = false,
    config = function ()
      return require("tmux").setup()
    end
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    -- cmd = "Copilot",
    -- event = "InsertEnter",
    config = function ()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
      -- vim.g.copilot_no_tab_map = true
      -- vim.g.copilot_assume_mapped = true
      -- vim.g.copilot_tab_fallback = ""
      -- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end
  },

  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function ()
      require("copilot_cmp").setup()
    end
  },

}

return plugins
