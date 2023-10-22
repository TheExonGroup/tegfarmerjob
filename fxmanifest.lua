fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'theexongroupde'
version '2023.10.22'

escrow_ignore{
	'config.lua',
}

client_scripts{
	'@NativeUILua_Reloaded/src/NativeUIReloaded.lua',
    'config.lua',
    'client/main.lua'
}

server_scripts{
	'@mysql-async/lib/MySQL.lua',
	'@oxmysql/lib/MySQL.lua',
    'config.lua',
    'server/main.lua',
}

shared_script{
	'@es_extended/imports.lua',
}

dependencies {
	'teg_utils',
	'NativeUILua_Reloaded',
	'progressBars'
}
dependency '/assetpacks'