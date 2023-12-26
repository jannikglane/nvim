return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installes = {
        "cmake",
        "c",
        "cpp",
        "css",
        "gitignore",
        "go",
        "http",
        "java",
        "scss",
        "sql",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
