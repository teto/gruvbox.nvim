local _MODREV, _SPECREV = 'scm', '-1'

rockspec_format = "3.0"
package = 'gruvbox.nvim'
version = _MODREV .. _SPECREV

description = {
  summary = 'gruvbox theme',
  detailed = [[
    Super fast git decorations implemented purely in lua/teal.
  ]],
  homepage = 'https://github.com/ellisonleao/gruvbox.nvim',
  labels = { 'neovim' }
}

dependencies = {
  'lush.nvim',
}

source = {
  url = 'http://github.com/teto/gruvbox.nvim/archive/v' .. _MODREV .. '.zip',
  dir = 'gitsigns.nvim-' .. _MODREV,
}

if _MODREV == 'scm' then
  source = {
    url = 'git://github.com/teto/gruvbox.nvim',
  }
end

build = {
  type = 'builtin',
  modules = {
    ['gruvbox.base']                                = 'lua/gruvbox/base.lua',
    ['gruvbox.colors']                              = 'lua/gruvbox/colors.lua',
    ['gruvbox.init']                                = 'lua/gruvbox/init.lua',
    ['gruvbox.languages']                           = 'lua/gruvbox/languages.lua',
    ['gruvbox.settings']                            = 'lua/gruvbox/settings.lua',
    ['gruvbox.utils']                               = 'lua/gruvbox/utils.lua',
    ['gruvbox.plugins.airline']                     = 'lua/gruvbox/plugins/airline.lua',
    ['gruvbox.plugins.highlights']                  = 'lua/gruvbox/plugins/highlights.lua',
    ['gruvbox.plugins.lightline']                   = 'lua/gruvbox/plugins/lightline.lua',
  },
}
