#CALLED BY START_KILL_VILLAGER THEN LOOPED BY KILL_VILLAGER ITSELF

#KILL VILLAGER AND BLOCK DISPLAY
execute store result score @s vg.success run kill @e[distance=..2,tag=villager.creator,sort=nearest,limit=2]

#KILL REMAINING BLOCK_DISPLAYS
execute if score @s vg.success matches 1..2 as @e[type=block_display,tag=villager.creator] unless data entity @s Passengers run kill @s

#REPETIR HASTA ENCONTRAR ALDEANO
execute unless score @s vg.success matches 1..2 if entity @s[distance=..5] positioned ^ ^ ^.5 run function vg.xtabay:villagers/kill_villager