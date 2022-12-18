
----------------------------------------
--- PRESENTS AREAS
----------------------------------------
Citizen.CreateThread(function()
    Citizen.Wait(1000)
    
    local props = {}
    
    props[1] = {
        items = Config.rewards.items,
        hash = 'kq_present',
        textureVariation = 1,
        minimumDistanceBetween = 1.5,
        offset = {
            x = 0.0, y = 0.0, z = -0.25,
        },
        animation = {
            duration = 1, -- in seconds
            dict = 'mp_take_money_mg',
            anim = 'put_cash_into_bag_loop',
            flag = 1,
        },
        labelSingular = Config.locale['Christmas present'],
        labelPlurar = Config.locale['Christmas presents'],
        collectMessage = Config.locale['Collect the christmas present'],
        icon = 'fas fa-gift',
    }
    
    if Config.rewards.money.enabled then
        props[2] = {
            hash = 'kq_present',
            textureVariation = 1,
            minimumDistanceBetween = 1.5,
            
            items = {},
            
            isCash = true,
            moneyAmount = Config.rewards.money,
            
            offset = {
                x = 0.0, y = 0.0, z = -0.25,
            },
            animation = {
                duration = 1, -- in seconds
                dict = 'mp_take_money_mg',
                anim = 'put_cash_into_bag_loop',
                flag = 1,
            },
            labelSingular = Config.locale['Christmas present'],
            labelPlurar = Config.locale['Christmas presents'],
            collectMessage = Config.locale['Collect the christmas present'],
            icon = 'fas fa-gift',
        }
    end
    
    for k, area in pairs(Config.areas) do
        local presents = {
            name = 'Christmas Presents',
            renderDistance = 50.0,
            coords = area.coords,
            radius = area.radius,
            amount = area.amount,
            regrowTime = 10, -- in seconds
            
            event = 'kq_christmas:server:onPickup',
            eventType = 'server',
            
            props = props
        }
        
        exports['kq_lootareas']:CreateArea('kq_christmas_presents_' .. k, presents)
    
    end
end)

AddEventHandler('kq_christmas:server:onPickup', function(player, area, propKey, loot)
    if loot == nil then
        print('\n^1 <!> A higher version of kq_lootareas is required for this script to function properly (0.9.8^)! Please update via the keymaster <!>\n')
    end
    
    if not loot.isCash then
        return
    end
    
    local moneyAmount = math.random(loot.moneyAmount.min, loot.moneyAmount.max)
    AddPlayerMoney(player, moneyAmount)
    TriggerClientEvent('kq_christmas:client:showTooltip', player, Config.locale['~g~You picked up ~h~${AMOUNT}']:gsub('{AMOUNT}', moneyAmount))
end)
