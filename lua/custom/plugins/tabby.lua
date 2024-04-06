return {
    {
    'nanozuki/tabby.nvim',
    event = 'VimEnter',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
    require('tabby.tabline').use_preset('active_wins_at_tail', {
  nerdfont = true, -- whether use nerdfont
  theme = {
    fill = 'TabLineFill', -- tabline background
    head = 'TabLine', -- head element highlight
    current_tab = 'TabLineSel', -- current tab label highlight
    tab = 'TabLine', -- other tab label highlight
    win = 'TabLine', -- window highlight
    tail = 'TabLine', -- tail element highlight
  },
  lualine_theme = 'kanagawa', -- lualine theme name
  buf_name = {
    mode = 'unique',
  },
  tab_name = {
    name_fallback = function(tabid)
      return ''
    end,
  },
})
    end,
  },
}
