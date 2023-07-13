local PLUGIN = PLUGIN
PLUGIN.name = "Needs"
PLUGIN.author = "OctraSource"
PLUGIN.description = "Adds a hunger and food system for players."
PLUGIN.defaultMax = 100 -- the maximum value of both hunger and thirst

PLUGIN.thirstDecayRate = 120 -- number of seconds before thirst decreases by 1
PLUGIN.hungerDecayRate = 180 -- number of seconds before hunger decreases by 1

ix.util.Include("sv_plugin.lua")

local playerMeta = FindMetaTable("Player")

function playerMeta:getHunger()
	return self:GetCharacter():GetData("hunger", PLUGIN.defaultMax)
end

function playerMeta:getThirst()
	return self:GetCharacter():GetData("thirst", PLUGIN.defaultMax)
end