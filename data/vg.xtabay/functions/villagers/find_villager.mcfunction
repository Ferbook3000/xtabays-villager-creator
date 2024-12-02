#FIRST CALLED BY VILLAGER_PROPERTIES_MENU THEN LOOPED BY FIND_VILLAGER ITSELF

#RESETEAR SCORE VG.SUCCESS
scoreboard players set @s vg.success 0

#¿SE ENCONTRÓ ALDEANO?
execute if entity @e[distance=..2,type=villager,tag=villager.creator,limit=1] run function vg.xtabay:villagers/pmenu/found_villager

#ALDEANO NO ENCONTRADO
execute if entity @s[distance=5..] if score @s vg.success matches 0 run tellraw @s {"text":"Villager not found","color":"red"}

#REPETIR HASTA ENCONTRAR ALDEANO
execute unless score @s vg.success matches 1 if entity @s[distance=..5] positioned ^ ^ ^.5 run function vg.xtabay:villagers/find_villager