fx_version 'cerulean'
game { 'gta5' }

lua45 'yes'

author 'SM X Simon'
discription 'SM Auto Versicherung'

client_scripts {
    'config.lua',
    'client.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server.lua'
}

shared_script '@es_extended/imports.lua'
