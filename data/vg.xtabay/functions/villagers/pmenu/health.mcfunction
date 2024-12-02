#CALLED BY MENU [HEALTH]

#RESET HEALTH SCORE
#execute unless score @s vg.health matches 0.. run scoreboard players set @s vg.health 0

#GET HEALTH
$execute store result score @s vg.health run data get storage villager:creator villager.$(id).Attributes[{Name:"minecraft:generic.max_health"}].Base

#ADD OR REMOVE HEALTH
$execute store result storage villager:creator villager.$(id).Attributes[{Name:"minecraft:generic.max_health"}].Base int 1 run scoreboard players $(action) @s vg.health $(health)

#GET REAL HEALTH
$execute store result storage villager:creator villager.$(id).Health int 1 run scoreboard players operation @s vg.health.real = @s vg.health
scoreboard players operation @s vg.health.real /= !vg.2 vg.health.real

#SHOW CURRENT HEALTH
title @s clear
title @s actionbar [{"text":"Villager health: "},{"score":{"name":"*","objective":"vg.health.real"},"color":"red"},{"text":"♥","color":"red"}]