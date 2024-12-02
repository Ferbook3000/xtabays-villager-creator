#CALLED BY STOP_EDITING

#ELIMINAR ARMOR STAND
$kill @e[type=armor_stand,tag=currently.editing,tag=$(id)]

#RESTAURAR PROFESIÓN
$data modify entity @s VillagerData.profession set from storage villager:creator villager.$(id).oldprofession

#RESTAURAR TIPO
$data modify entity @s VillagerData.type set from storage villager:creator villager.$(id).oldtype

#REMOVER SCORE CON ID DE JUGADOR
scoreboard players reset @s vg.player.id

#say villager restored