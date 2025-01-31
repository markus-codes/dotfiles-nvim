return {
  {
    "scottmckendry/cyberdream.nvim", -- nvchad style search
    lazy = true,
    opts = {
      theme = {
        variant = "auto" -- change cyberdream theme; auto, light
      }
    }
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night" -- change tokyonight theme; night, storm, day, moon
    },
  },
  {
    "olimorris/onedarkpro.nvim", -- use :colorscheme onedark to change theme; onedark, onelight, onedark_vivid, onedark_dark
    lazy = true,
  },
  {
    "navarasu/onedark.nvim",
    lazy = true,
    opts = {
      style = "dark" -- change onedark theme; dark, darker, cool, deep, warm, warmer, light
    }
  },
  {
    'projekt0n/github-nvim-theme', -- use :colorscheme github_dark to change theme; github_dark, github_dark_default, github_dark_dimmed, github_dark_high_contrast, github_dark_colorblind, github_dark_tritanopia, github_light, github_light_default, github_light_high_contrast, github_light_colorblind, github_light_tritanopia
    name = 'github-theme',
    lazy = true,
  },
  {
    "EdenEast/nightfox.nvim", -- use :colorscheme nightfox to change theme; nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
    lazy = true,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    opts = {
      theme = "dragon" -- change kanagawa theme; wave, dragon, lotus
    }
  },
  {
    "dgox16/oldworld.nvim",
    lazy = true,
    opts = {
      variant = "cooler" -- change oldworld theme; default, oled, cooler
    }
  },
  {
    "ronisbr/nano-theme.nvim",
    init = function ()
      vim.o.background = "light" 
    end
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "frappe", -- change catppuccin theme; latte, frappe, macchiato, mocha
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  }
}
