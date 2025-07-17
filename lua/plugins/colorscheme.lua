-- In ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  {
    "mcchrish/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    config = function()
      vim.g.zenbones_darken_comments = 60
      vim.cmd("colorscheme zenbones")
    end,
  },

  -- Configure LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "zenwritten",
    },
  },
}
