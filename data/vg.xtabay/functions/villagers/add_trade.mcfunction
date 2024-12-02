#FIRST CALLED BY START_ADD_TRADE THEN LOOPED BY ADD_TRADE ITSELF

#OBTENER INFORMACIÓN DE COFRE
execute if block ~ ~ ~ chest run function vg.xtabay:villagers/get_chest_data

#AÑADIR TRADEOS
execute if block ~ ~ ~ chest run function vg.xtabay:villagers/add_trade_macro with storage villager:creator chest

#BORRAR RAWDATA COFRE
execute if block ~ ~ ~ chest run data remove storage villager:creator chest.rawdata

#REPETIR HASTA ENCONTRAR COFRE
execute unless block ~ ~ ~ chest if entity @s[distance=..7] positioned ^ ^ ^1 run function vg.xtabay:villagers/add_trade

#BORRAR COFRE
execute if block ~ ~ ~ chest run setblock ~ ~ ~ air replace