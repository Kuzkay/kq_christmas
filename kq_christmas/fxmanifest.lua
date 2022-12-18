fx_version 'cerulean'
games      { 'gta5' }
lua54 'yes'

author 'KuzQuality | Kuzkay'
description 'Christmas Presents by KuzQuality'
version '1.0.0'

--
-- Server
--


data_file 'DLC_ITYP_REQUEST' 'stream/kq_christmas.ytyp'

server_scripts {
    'config.lua',
    'server/server.lua',
    'server/esx.lua',
    'server/qb.lua',
}

--
-- Client
--

client_scripts {
    'client/client.lua'
}

escrow_ignore {
    'config.lua',
    'server/*.lua',
    'client/*.lua',
}

dependencies {
    'kq_lootareas',
}
