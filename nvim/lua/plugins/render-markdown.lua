return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons", -- optional but recommended
    },
    ft = { "markdown" }, -- load only for markdown files
    opts = {
      -- example options
      render_modes = { "n", "c", "t" }, -- normal/command/terminal
      anti_conceal = {
        enabled = true,
      },
      max_width = 80,
    },
    config = function(_, opts) require("render-markdown").setup(opts) end,
  },
}
