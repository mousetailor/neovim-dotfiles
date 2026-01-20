--[[ return {
  'shaunsingh/nord.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- Example config in lua
  vim.g.nord_contrast = true
  vim.g.nord_borders = false
  vim.g.nord_disable_background = true
  vim.g.nord_italic = false
  vim.g.nord_uniform_diff_background = true
  vim.g.nord_bold = false

  -- Load the colorscheme
  require('nord').set()

    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      vim.g.nord_disable_background = bg_transparent
    end
  vim.keymap.set('n','<leader>bg',toggle_transparency, { noremap = true, silent = true })
  end
}
]] --
return {
  "sainnhe/sonokai",
  priority = 1000,
  config = function()
    vim.g.sonokai_transparent_background = "1"
    vim.g.sonokai_enable_italic = "1"
    vim.g.sonokai_style = "andromeda"
    vim.cmd.colorscheme("sonokai")
  end
}
