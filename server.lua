ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local function getMoneyFromUser(id_user)
	local xPlayer = ESX.GetPlayerFromId(id_user)
	return xPlayer.getMoney()
end

TriggerEvent('es:addCommand', 'job', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.label
    local jobgrade = xPlayer.job.grade_label

TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You work at: ' .. job .. ' - ' .. jobgrade})  
end, {help = "It will show where you work and what rank you have"})
