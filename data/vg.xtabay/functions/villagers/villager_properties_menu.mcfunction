#CALLED BY ADVANCEMENTS VILLAGER_PROPERTIES_STICK AND VILLAGER_PROPERTIES_STICK2

#ASSIGNAR ID A JUGADOR
execute unless score @s vg.player.id matches 0.. run function vg.xtabay:id/assign_player_id

#OBTENER ID DE JUGADOR
execute store result storage villager:creator villager.id int 1 run scoreboard players get @s vg.player.id

#RAYCAST ALDEANO
execute unless entity @s[tag=properties.menu] at @s anchored eyes run function vg.xtabay:villagers/find_villager

#AUTOAÑADIR TAG EDITANDO ALDEANO
execute if score @s vg.success matches 1 unless entity @s[tag=properties.menu] run tag @s add properties.menu

#EJECUTAR MENU CON ID DE JUGADOR
execute if entity @s[tag=properties.menu] run function vg.xtabay:villagers/pmenu/menu with storage villager:creator villager

#REMOVER ADVANCEMENT
advancement revoke @s only vg.xtabay:villager_properties_stick
advancement revoke @s only vg.xtabay:villager_properties_stick2
