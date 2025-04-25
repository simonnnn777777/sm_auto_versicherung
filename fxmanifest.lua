fx_version 'cerulean'
game { 'gta5' }

lua45 'yes'

author 'NN | Simon'
discription 'NN Auto Versicherung'

client_scripts {
    'config.lua',
    'client.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server.lua'
}

shared_script '@es_extended/imports.lua'