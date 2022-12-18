if Config.qbSettings.enabled then

    if Config.qbSettings.useNewQBExport then
        QBCore = exports['qb-core']:GetCoreObject()
    end
    
    function AddPlayerMoney(player, amount, account)
        local xPlayer = QBCore.Functions.GetPlayer(player)
        
        if not xPlayer then
            return false
        end
        
        xPlayer.Functions.AddMoney(account or Config.qbSettings.moneyAccount, amount)
    end
end
