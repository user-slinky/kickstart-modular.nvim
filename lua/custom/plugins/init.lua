require('custom.plugins.leap').create_default_mappings()
-- Define equivalence classes for brackets and quotes, in addition to
-- the default whitespace group.
require('custom.plugins.leap').opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }

-- Override some old defaults - use backspace instead of tab (see issue #165).
require('custom.plugins.leap').opts.special_keys.prev_target = '<backspace>'
require('custom.plugins.leap').opts.special_keys.prev_group = '<backspace>'

-- Use the traversal keys to repeat the previous motion without explicitly
-- invoking Leap.
require('custom.plugins.leap.user').set_repeat_keys('<enter>', '<backspace>')

require('custom.plugins.tabby.tabline').use_preset('active_wins_at_tail', {
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
