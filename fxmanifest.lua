fx_version 'adamant'

game 'gta5'

name 'atlantis_oxy'
author 'lilfraae'
description 'Oxy Runs script '
version 'a_0.1.1'

shared_scripts {
    '@es_extended/locale.lua',
    'locales/*.lua',
    'config.lua',
}

server_scripts {
	'server/main.lua'
}

client_scripts {
	'client/main.lua'
}

dependency 'es_extended'