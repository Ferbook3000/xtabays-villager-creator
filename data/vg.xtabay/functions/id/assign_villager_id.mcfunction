#DEPRECATED

#ASSIGN ID
execute unless entity @s[scores={vg.villager.id=0..}] run data modify storage villager.creator ID 
execute unless entity @s[scores={vg.villager.id=0..}] run scoreboard players set @s vg.villager.id 1
execute if entity @s[scores={vg.villager.id=1}] run scoreboard players operation !vg.villager.id vg.villager.id += @s vg.villager.id
execute if entity @s[scores={vg.villager.id=1}] store result storage villager:creator ID.id run scoreboard players operation @s vg.villager.id = !vg.villager.id vg.villager.id
#TEMP STORE UUID
execute if entity @s[scores={vg.villager.id=0..}] run data modify storage villager:creator ID.UUID set from entity @s UUID
#DEFINE ENTITY
execute if entity @s[scores={vg.player.id=0..}] run data modify storage villager:creator ID.entity set value villager

#STORE ID AND UUID FOR RECOVERY
execute if entity @s[scores={vg.villager.id=0..}] run function vg.xtabay:id/store_id with storage villager:creator ID