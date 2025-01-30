return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        autoformat = false,
        servers = {
          -- Your JDTLS configuration goes here
          jdtls = {
            -- settings = {
            --   java = {
            --     configuration = {
            --       runtimes = {
            --         {
            --           name = "JavaSE-23",
            --           path = "/usr/local/sdkman/candidates/java/23-tem",
            --         },
            --       },
            --     },
            --   },
            -- },
          },
        },
        setup = {
          jdtls = function()
            -- Your nvim-java configuration goes here
            require("java").setup({
              -- root_markers = {
              --   "settings.gradle",
              --   "settings.gradle.kts",
              --   "pom.xml",
              --   "build.gradle",
              --   "mvnw",
              --   "gradlew",
              --   "build.gradle",
              --   "build.gradle.kts",
              -- },
            })
          end,
        },
      },
    },
  },
  keys = {
    {
      "<leader>co",
      function()
        vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
      end,
      desc = "Organize Imports",
    },
    {
      "<leader>cq",
      function()
        vim.lsp.buf.code_action({ context = { only = { "quickassist" } }, apply = true })
      end,
      desc = "Quick Assist",
    },
  },
}
