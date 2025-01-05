return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        highlight = {
          enable = true,
        },
	indent = {
	  enable = true,
	},
        auto_install = true,
        ensure_installed = {
          "c",
          "csv",
          "bash",
          "dockerfile",
          "gitignore",
          "go",
          "gomod",
          "gosum",
          "graphql",
          "html",
          "javascript",
          "jsdoc",
          "json",
          "lua",
          "luadoc",
          "luap",
          "markdown",
          "markdown_inline",
          "nginx",
          "prisma",
          "proto",
          "python",
          "regex",
          "rust",
          "sql",
          "toml",
          "tsx",
          "typescript",
          "xml",
          "yaml",
          "zig",
        },
      }
    end,
  },
}

