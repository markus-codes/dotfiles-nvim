return {
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          keys = {
            {
              align = "center",
	      text = {
                { "Neovim :: N Λ N O ", hl = 'Normal' }
	      }
	    }
	  },
        },
	sections = {
          { section = "keys"},
        },
      },
    },
  },
}
