#CALLED BY FIND_VILLAGER

#EJECUTAR EN ALDEANO
execute store result score @s vg.success as @e[distance=..2,type=villager,tag=villager.creator,limit=1] run function vg.xtabay:villagers/pmenu/on_found_villager with storage villager:creator villager

#ALDEANO ENCONTRADO
execute if score @s vg.success matches 1 run tellraw @s {"text":"Found villager","color":"green"}

#SILENCIAR COMANDOS
execute if data storage villager:creator {silentmode:true} run gamerule sendCommandFeedback false

#say found villager executed