ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local function getMoneyFromUser(id_user)
	local xPlayer = ESX.GetPlayerFromId(id_user)
	return xPlayer.getMoney()
end
	
TriggerEvent('es:addCommand', 'prace', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.label
    local jobgrade = xPlayer.job.grade_label

TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Pracuješ v: ' .. job .. ' - ' .. jobgrade})  
end, {help = "Ukáže kde pracuješ a jakou hodnost máš"})

TriggerEvent('es:addCommand', 'job', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.label
    local jobgrade = xPlayer.job.grade_label

TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Pracuješ v: ' .. job .. ' - ' .. jobgrade})  
end, {help = "Ukáže kde pracuješ a jakou hodnost máš"})