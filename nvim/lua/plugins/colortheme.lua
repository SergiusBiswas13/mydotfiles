return{
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        style = "night", -- Choose from "storm", "moon", "night", "day"
        transparent = true, -- Set true if you want a transparent background
        styles = {
          sidebars = "dark", -- style for sidebars
          floats = "dark",   -- style for floating windows
        },
      },
      config = function(_, opts)
        require("tokyonight").setup(opts)
        vim.cmd([[colorscheme tokyonight]])
      end,
}
