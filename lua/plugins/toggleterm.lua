return {
  'akinsho/toggleterm.nvim',
  lazy = false,
  version = "*",
  config = function()
    require('toggleterm').setup{
      shell = "powershell",
      direction = 'vertical',
      -- direction = 'float',
      size = 36,
      autochdir = true,
    }
  end
}
