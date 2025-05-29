return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- Set initial background transparency
    local bg_transparent = true

    -- Configure the tokyonight style
    require('tokyonight').setup {
      style = 'storm', -- or "night", "moon", "day"
      transparent = bg_transparent,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = 'dark',
        floats = 'dark',
      },
    }

    -- Load the colorscheme
    vim.cmd [[colorscheme tokyonight]]

    -- Toggle transparency
    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      require('tokyonight').setup {
        transparent = bg_transparent,
      }
      vim.cmd [[colorscheme tokyonight]]
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
