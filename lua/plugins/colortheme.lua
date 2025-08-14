return {
  'folke/tokyonight.nvim',
  priority = 1000,
  config = function()
    require('tokyonight').setup {
      style = 'storm',
      transparent = true,
      styles = {
        sidebars = 'dark',
        floats = 'dark',
        comments = { italic = true },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },
      dim_inactive = true,
    }
    vim.cmd.colorscheme 'tokyonight'
  end,
}
