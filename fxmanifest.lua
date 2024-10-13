fx_version 'cerulean'
game 'gta5'

author 'Krupowski'
description 'Skibidi Toleta do używania by Krupowski'
version '1.0.0'


dependencies {
    'es_extended',      
    'ox_target',        
    'ox_lib'           
}


server_scripts {
    'server.lua'                 
}

client_scripts {
    'client.lua'              
}

shared_scripts {
    '@ox_lib/init.lua'           
}

lua54 'yes'
