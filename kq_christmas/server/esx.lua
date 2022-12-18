if Config.esxSettings.enabled then
    ESX = nil
    
    if Config.esxSettings.useNewESXExport then
        ESX = exports['es_extended']:getSharedObject()
    else
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
    
    function AddPlayerMoney(player, amount, account)
        local xPlayer = ESX.GetPlayerFromId(player)
        if not xPlayer then
            return false
        end
        
        xPlayer.addAccountMoney(account or Config.esxSettings.moneyAccount, amount)
    end
end
