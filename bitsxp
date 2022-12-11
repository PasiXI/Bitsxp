-- external dependencies
texts = require 'texts'
config = require 'config'
packets = require('packets')

-- internal dependencies
require 'settings'
require 'commands'
require 'utilities'
require 'ui'

-- addon setup
_addon.name = 'BitsXP'
_addon.author = 'Bit'
_addon.version = 1.0
_addon.command = 'bxp'

settings = config.load('data\\settings.xml', defaultSettings)
config.register(settings, initializeSettings)

setupCommands()
setupUI()
