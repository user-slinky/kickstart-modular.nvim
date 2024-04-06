return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'ColorScheme',
    opts = {
      options = {
        theme = 'kanagawa',
        globalstatus = true,
      },
      winbar = {
        lualine_a = {},
        lualine_b = { 'filetype' },
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },

      inactive_winbar = {
        lualine_a = {},
        lualine_b = { 'filetype' },
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
