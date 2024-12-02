#CALLED BY START_VILLAGER_CREATION

#OBTENER INFORMACIÓN DE COFRE
execute if block ~ ~ ~ chest run function vg.xtabay:villagers/get_chest_data

#GENERAR ITEM FRAME
execute if block ~ ~ ~ chest run summon minecraft:item_frame ~ ~ ~ {Tags:["align"],Facing:1b}

#GENERAR ALDEANO
execute if block ~ ~ ~ chest if entity @e[distance=..0.9, type=item_frame, tag=align] at @e[distance=..0.9, type=item_frame, tag=align, limit=1] run function vg.xtabay:villagers/summon_villager_macro with storage villager:creator chest

#ELIMINAR ITEM FRAME
execute if block ~ ~ ~ chest if entity @e[distance=..0.9, type=item_frame, tag=align] run kill @e[distance=..0.9, type=item_frame, tag=align, limit=1]

#RENOMBRAR ALDEANO
execute if block ~ ~ ~ chest if data storage villager:creator chest.name run data modify entity @e[distance=..1,limit=1,type=villager,tag=villager.creator] CustomName set from storage villager:creator chest.name
#execute if block ~ ~ ~ chest if data storage villager:creator chest.name run data modify entity @e[distance=..1,limit=1,type=villager,tag=villager.creator] CustomNameVisible set value 1b

#BORRAR RAWDATA COFRE
execute if block ~ ~ ~ chest run data remove storage villager:creator chest.rawdata

#REPETIR HASTA ENCONTRAR COFRE
execute unless block ~ ~ ~ chest if entity @s[distance=..7] positioned ^ ^ ^1 run function vg.xtabay:villagers/find_chest

#BORRAR COFRE
execute if block ~ ~ ~ chest run setblock ~ ~ ~ air replace