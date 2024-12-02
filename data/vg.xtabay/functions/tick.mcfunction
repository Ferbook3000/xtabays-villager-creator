#CALLED EVERY IN-GAME TICK / 20 TIMES PER SECOND ON AVERAGE

#COOLDOWN PALOS
execute as @a if score @s stickCoolDown matches 1..5 run scoreboard players remove @s stickCoolDown 1

#CERRAR MENU AL ESTAR LEJOS DEL ALDEANO SIN SOSTENER EL PALO DE PROPIEDADES
execute as @a if entity @s[tag=properties.menu] at @s unless entity @e[distance=..5,name='CURRENTLY EDITING'] unless items entity @s weapon.* minecraft:stick[minecraft:custom_data={villager.editor:1b}] run function vg.xtabay:villagers/pmenu/stop_editing_if_far