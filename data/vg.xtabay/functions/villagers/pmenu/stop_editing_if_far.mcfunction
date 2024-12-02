#CALLED BY TICK FUNCTION

#OBTENER ID DE JUGADOR
execute store result storage villager:creator villager.id int 1 run scoreboard players get @s vg.player.id

#EJECUTAR STOP EDITING
function vg.xtabay:villagers/pmenu/stop_editing with storage villager:creator villager