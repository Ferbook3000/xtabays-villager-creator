#CALLED BY VILLAGERS/VILLAGER_PROPERTIES_MENU

#ASSIGN ID
scoreboard players set @s vg.player.id 1
scoreboard players operation !vg.player.id vg.player.id += @s vg.player.id
execute store result storage villager:creator ID.id int 1 run scoreboard players operation @s vg.player.id = !vg.player.id vg.player.id

#TEMP STORE UUID
data modify storage villager:creator ID.UUID set from entity @s UUID

#DEFINE ENTITY
data modify storage villager:creator ID.entity set value player

#STORE ID AND UUID FOR RECOVERY
function vg.xtabay:id/store_id with storage villager:creator ID