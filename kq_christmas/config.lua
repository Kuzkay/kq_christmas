Config = {}

Config.debug = false

--- SETTINGS FOR ESX
Config.esxSettings = {
    enabled = true,
    oldEsx = false,
    moneyAccount = 'money',
}

--- SETTINGS FOR QBCORE
Config.qbSettings = {
    enabled = false,
    useNewQBExport = true, -- Make sure to uncomment the old export inside fxmanifest.lua if you're still using it
    moneyAccount = 'cash',
}

Config.locale = {
    ['Christmas present'] = 'Christmas present',
    ['Christmas presents'] = 'Christmas presents',
    ['Collect the christmas present'] = 'Collect the christmas present',
    ['~g~You picked up ~h~${AMOUNT}'] = '~g~You picked up ~h~${AMOUNT}',
}

--- <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!>
--- <!>  CHANGE THE ITEMS TO FIT YOUR SERVER! THESE ARE JUST EXAMPLE ITEMS  <!>
--- <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!> <!>
Config.rewards = {
    money = {
        enabled = true,
        min = 200,
        max = 400,
    },
    items = {
        {
            item = 'gold',
            chance = 50,
            amount = {
                min = 1,
                max = 2,
            },
        },
        {
            item = 'phone',
            chance = 50,
            amount = {
                min = 1,
                max = 1,
            },
        }
    },
}

-- All the areas where the presents will spawn
-- By default it covers nearly the entire city of Los Santos
Config.areas = {
    {
        coords = {
            x = 500.0, y = 0.0, z = 250.0,
        },
        radius = 500.0,
        amount = 50,
    },
    {
        coords = {
            x = -500.0, y = 0.0, z = 250.0,
        },
        radius = 500.0,
        amount = 50,
    },
    {
        coords = {
            x = 500.0, y = -1000.0, z = 250.0,
        },
        radius = 500.0,
        amount = 50,
    },
    {
        coords = {
            x = -500.0, y = -1000.0, z = 250.0,
        },
        radius = 500.0,
        amount = 50,
    },
    {
        coords = {
            x = 500.0, y = -2000.0, z = 250.0,
        },
        radius = 500.0,
        amount = 50,
    },
    {
        coords = {
            x = -500.0, y = -2000.0, z = 250.0,
        },
        radius = 500.0,
        amount = 50,
    },
    {
        coords = {
            x = -1400.0, y = -500.0, z = 250.0,
        },
        radius = 500.0,
        amount = 50,
    },
    {
        coords = {
            x = 0.0, y = -500.0, z = 250.0,
        },
        radius = 200.0,
        amount = 10,
    },
    {
        coords = {
            x = 0.0, y = -1500.0, z = 250.0,
        },
        radius = 200.0,
        amount = 10,
    },
}
